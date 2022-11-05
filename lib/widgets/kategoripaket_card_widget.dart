import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KategoriPaketCard extends StatelessWidget {
  const KategoriPaketCard({
    super.key,
    required this.height,
    required this.width,
    this.backgroundImage,
    this.backgroundColor,
    this.borderRadius = 0,
    required this.title,
    this.titileStyle,
    required this.subtitle,
    this.subtitleStyle,
    this.illustrationImage,
  });

  final double height;
  final double width;
  final String? backgroundImage;
  final Color? backgroundColor;
  final double borderRadius;
  final String title;
  final TextStyle? titileStyle;
  final String subtitle;
  final TextStyle? subtitleStyle;
  final String? illustrationImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: backgroundImage != null
            ? DecorationImage(
                image: AssetImage(backgroundImage!),
                fit: BoxFit.cover,
              )
            : null,
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        color: backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 17.h),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: titileStyle ??
                  Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: subtitleStyle ??
                  Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white, fontSize: 9.sp),
            ),
          ),
          SizedBox(
            height: 60.h,
            child: illustrationImage != null
                ? Image.asset(
                    illustrationImage!,
                    fit: BoxFit.fitHeight,
                  )
                : const Center(),
          ),
        ],
      ),
    );
  }
}
