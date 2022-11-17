import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ulife/widgets/textformfield_toplabeled_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() {
    return _SignUpViewState();
  }
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> _signupFormKey = GlobalKey<FormState>();
  final TextEditingController _namaTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _hpTextController = TextEditingController();

  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Daftar Akun",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: FractionallySizedBox(
          heightFactor: 1.0,
          widthFactor: 1.0,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 320.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              style: Theme.of(context).textTheme.displayLarge,
                              children: [
                                const TextSpan(text: "Hai, Selamat "),
                                TextSpan(
                                  text: "Datang",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Image.asset(
                            "assets/images/waving-hand-emoji.png",
                          ),
                        ],
                      ),
                      Text(
                        "Ayo buatlah akun kamu sekarang.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Form(
                  key: _signupFormKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 320.w,
                        child: TextFormFieldTopLabeled(
                          labelPadding: EdgeInsets.only(bottom: 8.h),
                          labelText: "Nama Lengkap",
                          textFormField: TextFormField(
                            controller: _namaTextController,
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: "Masukan nama lengkap",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Masukan nama lengkap";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 320.w,
                        child: TextFormFieldTopLabeled(
                          labelPadding: EdgeInsets.only(bottom: 8.h),
                          labelText: "Email Address",
                          textFormField: TextFormField(
                            controller: _emailTextController,
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: "Masukan alamat email",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Masukan alamat email";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 320.w,
                        child: TextFormFieldTopLabeled(
                          labelPadding: EdgeInsets.only(bottom: 8.h),
                          labelText: "Password",
                          textFormField: TextFormField(
                            controller: _passwordTextController,
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            obscureText: _hidePassword,
                            decoration: InputDecoration(
                              hintText: "Masukan password",
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  if (mounted) {
                                    setState(() {
                                      _hidePassword =
                                          _hidePassword ? false : true;
                                    });
                                  }
                                },
                                child: Image.asset(
                                  "assets/images/${_hidePassword ? "visibility-on.png" : "visibility-off.png"}",
                                  width: 22.w,
                                  color: Colors.grey.shade400,
                                  colorBlendMode: BlendMode.srcATop,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Masukan password";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 320.w,
                        child: TextFormFieldTopLabeled(
                          labelPadding: EdgeInsets.only(bottom: 8.h),
                          labelText: "No. HP",
                          textFormField: TextFormField(
                            controller: _hpTextController,
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: "Masukan No. HP",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Masukan No. HP";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 49.h,
                      ),
                      SizedBox(
                        width: 320.w,
                        height: 40.h,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_signupFormKey.currentState!.validate()) {}
                          },
                          child: const Text("Daftar"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sudah memiliki akun? ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.grey)),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/login");
                            },
                            child: Text(
                              "Masuk",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text("Atau masuk dengan",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.grey)),
                      SizedBox(
                        height: 20.h,
                      ),
                      Wrap(
                        spacing: 30.w,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/google.png",
                              scale: 1.2,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/facebook.png",
                              scale: 1.2,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/apple.png",
                              scale: 1.2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text("Dengan mendaftar Anda telah",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.grey)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("menyetujui ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.grey)),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Term & Condition",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ],
                      ),
                    ],
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
