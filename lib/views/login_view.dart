import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../utils/extensions.dart';
import '../widgets/textformfield_toplabeled_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  bool _rememberMe = false;
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
          "Masuk",
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
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              style: Theme.of(context).textTheme.displayLarge,
                              children: [
                                TextSpan(
                                  text: "Kembali",
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
                        "Silahkan masuk disini.",
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
                  key: _loginFormKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                        height: 28.h,
                      ),
                      SizedBox(
                        width: 320.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.w,
                                  height: 15.h,
                                  child: Checkbox(
                                    value: _rememberMe,
                                    onChanged: (value) {
                                      if (mounted) {
                                        setState(() {
                                          _rememberMe =
                                              value == true ? true : false;
                                        });
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Ingat saya",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text("Lupa Password ?",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.amber)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 57.h,
                      ),
                      SizedBox(
                        width: 320.w,
                        height: 40.h,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_loginFormKey.currentState!.validate()) {
                              Get.offAllNamed("/dashboard/",
                                  arguments: {"page": DashboardPages.home});
                            }
                          },
                          child: const Text("Masuk"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Tidak memiliki akun? ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.grey)),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/signup");
                            },
                            child: Text(
                              "Daftar",
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
