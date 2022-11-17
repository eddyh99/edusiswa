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
  String _selectedMethod = "ucoin";

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
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
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
                        trailing: Radio<String>(
                          value: "ucoin",
                          groupValue: _selectedMethod,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (String? value) {
                            if (mounted) {
                              setState(() {
                                _selectedMethod = value!;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 320.w,
                        child: Divider(thickness: 3.h),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 320.w,
                  margin: EdgeInsets.symmetric(
                    vertical: 25.h,
                  ),
                  child: Text(
                    "E-Wallet",
                    style: textTheme.titleSmall,
                  ),
                ),
                SizedBox(
                  width: 320.w,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 0.0,
                        leading: CircleAvatar(
                          radius: 20.sp,
                          backgroundImage: Image.asset(
                            "assets/images/logo-dana.png",
                            fit: BoxFit.cover,
                          ).image,
                        ),
                        title: Text(
                          "Dana",
                          style: textTheme.titleLarge,
                        ),
                        trailing: Radio<String>(
                          value: "dana",
                          groupValue: _selectedMethod,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (String? value) {
                            if (mounted) {
                              setState(() {
                                _selectedMethod = value!;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 320.w,
                        child: Divider(thickness: 3.h),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 0.0,
                        leading: CircleAvatar(
                          radius: 20.sp,
                          backgroundImage: Image.asset(
                            "assets/images/logo-ovo.png",
                            fit: BoxFit.cover,
                          ).image,
                        ),
                        title: Text(
                          "OVO",
                          style: textTheme.titleLarge,
                        ),
                        trailing: Radio<String>(
                          value: "ovo",
                          groupValue: _selectedMethod,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (String? value) {
                            if (mounted) {
                              setState(() {
                                _selectedMethod = value!;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 320.w,
                        child: Divider(thickness: 3.h),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 0.0,
                        leading: CircleAvatar(
                          radius: 20.sp,
                          backgroundImage: Image.asset(
                            "assets/images/logo-gopay.png",
                            fit: BoxFit.cover,
                          ).image,
                        ),
                        title: Text(
                          "GoPay",
                          style: textTheme.titleLarge,
                        ),
                        trailing: Radio<String>(
                          value: "gopay",
                          groupValue: _selectedMethod,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (String? value) {
                            if (mounted) {
                              setState(() {
                                _selectedMethod = value!;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 320.w,
                        child: Divider(thickness: 3.h),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 320.w,
                  margin: EdgeInsets.symmetric(
                    vertical: 25.h,
                  ),
                  child: Text(
                    "Virtual Account",
                    style: textTheme.titleSmall,
                  ),
                ),
                SizedBox(
                  width: 320.w,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 0.0,
                        leading: CircleAvatar(
                          radius: 20.sp,
                          backgroundColor: Colors.lightBlue,
                          child: Text(
                            "VA",
                            style: textTheme.titleLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        title: Text(
                          "BCA",
                          style: textTheme.titleLarge,
                        ),
                        trailing: Radio<String>(
                          value: "va_bca",
                          groupValue: _selectedMethod,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (String? value) {
                            if (mounted) {
                              setState(() {
                                _selectedMethod = value!;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 320.w,
                        child: Divider(thickness: 3.h),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 0.0,
                        leading: CircleAvatar(
                          radius: 20.sp,
                          backgroundColor: Colors.blue.shade900,
                          child: Text(
                            "VA",
                            style: textTheme.titleLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        title: Text(
                          "Mandiri",
                          style: textTheme.titleLarge,
                        ),
                        trailing: Radio<String>(
                          value: "va_mandiri",
                          groupValue: _selectedMethod,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (String? value) {
                            if (mounted) {
                              setState(() {
                                _selectedMethod = value!;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 320.w,
                        child: Divider(thickness: 3.h),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 60.h),
                  child: SizedBox(
                    width: 320.w,
                    height: 35.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Bayar",
                        style:
                            textTheme.titleLarge!.copyWith(color: Colors.white),
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
