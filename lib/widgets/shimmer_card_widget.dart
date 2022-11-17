import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      enabled: true,
      child: ListTile(
        isThreeLine: true,
        minVerticalPadding: 20.h,
        leading: Container(
          height: 65.h,
          width: 65.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r), color: Colors.grey),
        ),
        title: Container(
          height: 10.h,
          color: Colors.grey,
        ),
        subtitle: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 10.h,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 10.h,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
