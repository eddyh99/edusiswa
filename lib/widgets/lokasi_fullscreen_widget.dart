import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/lokasi_model.dart';

class PilihLokasiFullScreen extends StatelessWidget {
  const PilihLokasiFullScreen({
    super.key,
    required this.listLokasi,
  });

  final List<Lokasi> listLokasi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 1.w,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: UnconstrainedBox(
            child: Container(
              height: 30.sp,
              width: 30.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                color: Theme.of(context).primaryColor.withOpacity(0.2),
              ),
              child: Icon(
                Icons.chevron_left,
                size: 24.sp,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        title: Text(
          listLokasi[0].locationType!,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: FractionallySizedBox(
          heightFactor: 1.0,
          widthFactor: 1.0,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.h),
            width: 1.sw,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: listLokasi.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 2.h,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context, {
                      "id": listLokasi[index].kode,
                      "nama": listLokasi[index].nama
                    });
                  },
                  child: UnconstrainedBox(
                    child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      padding: EdgeInsets.zero,
                      height: 40.h,
                      width: 320.w,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        widthFactor: 1.0,
                        child: Text(
                          listLokasi[index].nama,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
