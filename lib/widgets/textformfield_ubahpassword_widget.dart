import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UbahPasswordTextFormField extends StatelessWidget {
  const UbahPasswordTextFormField(
      {super.key,
      this.controller,
      this.validator,
      this.hintText,
      this.obscureText = false});

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.h),
        border: UnderlineInputBorder(
          borderSide: BorderSide(width: 3.h, color: Colors.grey.shade300),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 3.h, color: Colors.grey.shade300),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 3.h, color: Colors.indigo),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 3.h, color: Colors.red),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 3.h, color: Colors.red),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 3.h, color: Colors.grey.shade300),
        ),
      ),
    );
  }
}
