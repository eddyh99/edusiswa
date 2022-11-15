import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulife/models/outlet_model.dart';
import 'package:ulife/widgets/cards_detailbadge_widget.dart';
import 'package:ulife/widgets/paket_card_widget.dart';

class PilihOutletsFullScreen extends StatelessWidget {
  const PilihOutletsFullScreen({
    super.key,
    required this.listOutlets,
  });

  final List<Outlet> listOutlets;

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
                color: Colors.indigo.shade100,
              ),
              child: Icon(
                Icons.chevron_left,
                size: 24.sp,
                color: Colors.indigo,
              ),
            ),
          ),
        ),
        title: Text(
          listOutlets[0].type,
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
              itemCount: listOutlets.length,
              separatorBuilder: (context, index) => SizedBox(
                height: 10.h,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context, {
                      "id": listOutlets[index].id,
                      "nama": listOutlets[index].nama
                    });
                  },
                  child: UnconstrainedBox(
                    child: PaketCard(
                      height: 100.h,
                      width: 320.w,
                      borderRadius: 8.r,
                      contentMargin: EdgeInsets.symmetric(
                          horizontal: 15.sp, vertical: 15.sp),
                      leadingImage: Image.asset(
                        "assets/images/logo-edukios.png",
                        fit: BoxFit.fill,
                        height: 70.sp,
                        width: 70.sp,
                      ),
                      title: Text(
                        listOutlets[index].nama,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      subtitle: Text(
                        listOutlets[index].alamat,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 10.sp),
                      ),
                      badge: const CardsBadge(text: "Pilih"),
                      ribbon: const SizedBox.shrink(),
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
