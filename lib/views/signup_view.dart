import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: SafeArea(
        child: FractionallySizedBox(
          heightFactor: 1.0,
          widthFactor: 1.0,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.headline1,
                            children: const [
                              TextSpan(text: "Hai, Selamat "),
                              TextSpan(
                                text: "Datang",
                                style: TextStyle(color: Colors.indigo),
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
                          .bodyText2!
                          .copyWith(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Form(
                  key: _signupFormKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      SizedBox(
                        width: 0.9.sw,
                        child: TextFormFieldTopLabeled(
                          labelPadding: EdgeInsets.only(bottom: 5.h),
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
                        width: 0.9.sw,
                        child: TextFormFieldTopLabeled(
                          labelPadding: EdgeInsets.only(bottom: 5.h),
                          labelText: "Email",
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
                        width: 0.9.sw,
                        child: TextFormFieldTopLabeled(
                          labelPadding: EdgeInsets.only(bottom: 5.h),
                          labelText: "Password",
                          textFormField: TextFormField(
                            controller: _passwordTextController,
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: "Masukan password",
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
                        width: 0.9.sw,
                        child: TextFormFieldTopLabeled(
                          labelPadding: EdgeInsets.only(bottom: 5.h),
                          labelText: "No. HP",
                          textFormField: TextFormField(
                            controller: _hpTextController,
                            maxLines: 1,
                            keyboardType: TextInputType.number,
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
                        height: 40.h,
                      ),
                      SizedBox(
                        width: 0.9.sw,
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sudah memiliki akun? ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.grey)),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Masuk",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.indigo),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text("Atau masuk dengan",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.grey)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Wrap(
                        spacing: 40.w,
                        children: [
                          Image.asset(
                            "assets/images/google.png",
                            scale: 1.2,
                          ),
                          Image.asset(
                            "assets/images/facebook.png",
                            scale: 1.2,
                          ),
                          Image.asset(
                            "assets/images/apple.png",
                            scale: 1.2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text("Dengan mendaftar Anda telah",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.grey)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("menyetujui ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.grey)),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Term & Condition",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.indigo),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
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
