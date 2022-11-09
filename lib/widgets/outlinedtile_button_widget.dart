import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedTileButton extends StatelessWidget {
  const OutlinedTileButton({
    super.key,
    this.leading,
    this.text,
    this.trailing,
    this.onPressed,
  });

  final Widget? leading;
  final Widget? text;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigo),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                leading ?? const SizedBox.shrink(),
                SizedBox(
                  width: 3.w,
                ),
                text ?? const SizedBox.shrink(),
              ],
            ),
            trailing ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
