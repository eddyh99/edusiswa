import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EdukasiDetailText extends StatelessWidget {
  const EdukasiDetailText(
      {super.key, required this.detailText, this.features = const []});

  final String detailText;
  final List<String> features;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          detailText,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
          height: 10.h,
        ),
        features.isNotEmpty
            ? Text(
                "Kelebihan kami:",
                style: Theme.of(context).textTheme.titleLarge,
              )
            : const SizedBox.shrink(),
        for (int i = 0;
            features.isNotEmpty ? i < features.length : i < 0;
            i++) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Icon(
                  Icons.check_circle_outline,
                  size: 16.sp,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Expanded(
                flex: 4,
                child: Text(
                  features[i],
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
