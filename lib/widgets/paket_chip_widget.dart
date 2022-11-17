import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaketChip extends StatelessWidget {
  const PaketChip(
      {super.key, required this.text, this.textStyle, this.chipColor});

  final String text;
  final TextStyle? textStyle;
  final Color? chipColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          color: chipColor ?? Theme.of(context).primaryColor.withOpacity(0.4)),
      child: Text(
        text,
        style: textStyle ??
            Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 10.sp,
                  color: Theme.of(context).primaryColor,
                ),
      ),
    );
  }
}
