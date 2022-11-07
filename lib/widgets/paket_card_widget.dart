import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaketCard extends StatelessWidget {
  const PaketCard({
    super.key,
    required this.height,
    required this.width,
    this.margin = const EdgeInsets.all(0.0),
    this.borderRadius = 0,
    this.contentMargin = const EdgeInsets.all(0.0),
    required this.leadingImage,
    this.leadingBorderRadius = 0,
    this.title,
    this.subtitle,
    required this.ribbon,
    required this.badge,
  });

  final double height;
  final double width;
  final EdgeInsets? margin;
  final double borderRadius;
  final EdgeInsets? contentMargin;
  final Image leadingImage;
  final double leadingBorderRadius;
  final Widget? title;
  final Widget? subtitle;
  final Widget ribbon;
  final Widget badge;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            Container(
              margin: contentMargin,
              child: Row(
                children: [
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(leadingBorderRadius),
                      ),
                      child: leadingImage,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          title ?? const SizedBox.shrink(),
                          subtitle ?? const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -20.w,
              top: 15.h,
              child: ribbon,
            ),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: badge,
            ),
          ],
        ),
      ),
    );
  }
}
