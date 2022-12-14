import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingChip extends StatelessWidget {
  const RatingChip({
    super.key,
    required this.textRating,
    this.textStyle,
    this.iconSize,
    this.foregroundColor,
    this.backgroundColor,
    this.isOutlined = true,
    this.onTap,
  });

  final String textRating;
  final TextStyle? textStyle;
  final double? iconSize;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final bool? isOutlined;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
          color: backgroundColor ?? Theme.of(context).primaryColor,
        ),
        child: Container(
          margin: EdgeInsets.all(1.sp),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
            color: isOutlined == true
                ? Theme.of(context).scaffoldBackgroundColor
                : backgroundColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                color: foregroundColor ??
                    (isOutlined == true
                        ? Theme.of(context).primaryColor
                        : Colors.white),
                size: iconSize ?? 18.sp,
              ),
              Text(
                textRating,
                style: textStyle ??
                    Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: foregroundColor ??
                              (isOutlined == true
                                  ? Theme.of(context).primaryColor
                                  : Colors.white),
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
