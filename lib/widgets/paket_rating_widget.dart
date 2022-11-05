import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaketRating extends StatelessWidget {
  const PaketRating(
      {super.key,
      required this.ratingCount,
      this.counterStyle,
      this.ratingColor = Colors.amber,
      this.iconSize});

  final String ratingCount;
  final TextStyle? counterStyle;
  final Color ratingColor;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.star,
          color: ratingColor,
          size: iconSize ?? 16.sp,
        ),
        Text(
          ratingCount,
          style: counterStyle ??
              Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: ratingColor,
                  ),
        ),
      ],
    );
  }
}
