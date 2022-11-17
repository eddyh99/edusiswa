import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ulife/widgets/textformfield_ubahpassword_widget.dart';

class UbahPasswordLamaView extends StatefulWidget {
  const UbahPasswordLamaView({super.key});

  @override
  State<UbahPasswordLamaView> createState() {
    return _UbahPasswordLamaViewState();
  }
}

class _UbahPasswordLamaViewState extends State<UbahPasswordLamaView> {
  final GlobalKey<FormState> _passwordFormKey = GlobalKey<FormState>();
  final TextEditingController _passwordTextController = TextEditingController();
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
          "Ubah Password",
          style: textTheme.displayMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: FractionallySizedBox(
          heightFactor: 1.0,
          widthFactor: 1.0,
          child: SingleChildScrollView(
            child: Form(
              key: _passwordFormKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  SizedBox(
                    width: 320.w,
                    child: Text(
                      "Silahkan Masukan password lama kamu, untuk memverifikasi ini memang kamu",
                      style: textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 57.h,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: UbahPasswordTextFormField(
                      controller: _passwordTextController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Masukan password lama";
                        }
                        return null;
                      },
                      hintText: "Password Lama",
                      obscureText: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30.h),
                    child: SizedBox(
                      width: 320.w,
                      height: 40.h,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_passwordFormKey.currentState!.validate()) {
                            Get.toNamed(
                                "/dashboard/account/ubah-password/baru");
                          }
                        },
                        child: Text(
                          "Lanjut",
                          style: textTheme.titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Lupa Password ?",
                      style: textTheme.titleLarge!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
