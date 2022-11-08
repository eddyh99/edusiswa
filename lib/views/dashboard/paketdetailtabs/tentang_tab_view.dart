import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TentangTabView extends StatefulWidget {
  const TentangTabView({super.key});

  @override
  State<TentangTabView> createState() {
    return _TentangTabViewState();
  }
}

class _TentangTabViewState extends State<TentangTabView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 320.w,
              child: Text(
                "Deskripsi",
                style: textTheme.displaySmall,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 320.w,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida facilisis ut pretium faucibus sapien est, nibh cursus. Amet auctor mi iaculis lorem libero. In risus, enim, mauris quisque vitae orci. Eu donec et, a ornare donec elementum arcu, duis habitant. Nibh ultricies nunc at massa, amet.",
                style: textTheme.bodySmall,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
              width: 320.w,
              child: Text(
                "Paket Sudah Termasuk:",
                style: textTheme.displaySmall,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 320.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int x = 0; x < 7; x++) ...[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Icon(
                            Icons.check_circle_outline,
                            size: 18.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Fitur dan keuntungan yang didapat No. $x",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
