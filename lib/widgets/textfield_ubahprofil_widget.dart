import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UbahProfilTextField extends StatelessWidget {
  const UbahProfilTextField({
    super.key,
    this.controller,
    this.hintText,
  });

  final TextEditingController? controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
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
