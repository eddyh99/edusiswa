import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsRibbon extends StatelessWidget {
  const CardsRibbon({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 45 * math.pi / 180,
      child: Container(
        width: 84.5.w,
        height: 20.5.h,
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
