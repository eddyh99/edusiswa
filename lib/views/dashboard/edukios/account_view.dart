import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EdukiosAccountView extends StatefulWidget {
  const EdukiosAccountView({super.key});

  @override
  State<EdukiosAccountView> createState() {
    return _EdukiosAccountViewState();
  }
}

class _EdukiosAccountViewState extends State<EdukiosAccountView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 1.w,
        leading: GestureDetector(
          onTap: () {
            Get.back(closeOverlays: true);
          },
          child: UnconstrainedBox(
            child: Container(
              height: 30.sp,
              width: 30.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                color: Theme.of(context).primaryColor.withOpacity(0.2),
              ),
              child: Icon(
                Icons.chevron_left,
                size: 24.sp,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        title: Text(
          "Akun Edukios",
          style: textTheme.displayMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: FractionallySizedBox(
          heightFactor: 1.0,
          widthFactor: 1.0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                  width: 320.w,
                  child: //User tile
                      ListTile(
                    isThreeLine: true,
                    leading: CircleAvatar(
                      radius: 30.r,
                      backgroundImage: const CachedNetworkImageProvider(
                        "https://placeimg.com/50/50/people",
                      ),
                    ),
                    title: Text(
                      "Miracle Culhane",
                      style: textTheme.titleLarge,
                    ),
                    subtitle: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 2.w,
                          children: [
                            Text(
                              "Konsultasi:",
                              style: textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              "1/1",
                              style: textTheme.bodySmall,
                            ),
                          ],
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 2.w,
                          children: [
                            Text(
                              "Exp:",
                              style: textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              "22 / 12 / 2023",
                              style: textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 5.h,
                ),
                SizedBox(
                  height: 250.h,
                ),
                Divider(
                  thickness: 5.h,
                ),
                Container(
                  width: 320.w,
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aktifitas Saya",
                        style: textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: ListTile(
                            dense: true,
                            leading: Text(
                              "Riwayat Konsultasi",
                              style: textTheme.titleSmall,
                            ),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: ListTile(
                            dense: true,
                            leading: Text(
                              "Konsultasi Berlangsung",
                              style: textTheme.titleSmall,
                            ),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: ListTile(
                            dense: true,
                            leading: Text(
                              "Tiket Konsultasi",
                              style: textTheme.titleSmall,
                            ),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: ListTile(
                            dense: true,
                            leading: Text(
                              "Ulasan",
                              style: textTheme.titleSmall,
                            ),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
