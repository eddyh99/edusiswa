import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MetodePembayaranView extends StatefulWidget {
  const MetodePembayaranView({super.key});

  @override
  State<MetodePembayaranView> createState() {
    return _MetodePembayaranViewState();
  }
}

class _MetodePembayaranViewState extends State<MetodePembayaranView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 1.w,
        leading: GestureDetector(
          onTap: () {
            Get.back(closeOverlays: true);
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
          "Pembayaran",
          style: textTheme.displayMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: FractionallySizedBox(
          heightFactor: 1.0,
          widthFactor: 1.0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 320.w,
                  margin: EdgeInsets.symmetric(
                    vertical: 25.h,
                  ),
                  child: Text(
                    "Silahkan Pilih Metode Pembayaran",
                    style: textTheme.titleSmall,
                  ),
                ),
                SizedBox(
                  width: 320.w,
                  child: ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 0.0,
                    leading: CircleAvatar(
                      radius: 20.sp,
                      backgroundImage: Image.asset(
                        "assets/images/logo-ucoin.png",
                        fit: BoxFit.cover,
                      ).image,
                    ),
                    title: Text(
                      "UCoin",
                      style: textTheme.titleLarge,
                    ),
                    subtitle: Text(
                      "Rp. 123.455.000",
                      style: textTheme.bodySmall!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
