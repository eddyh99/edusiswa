import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ulife/widgets/paket_rating_widget.dart';

class EdukiosProfilTutorView extends StatefulWidget {
  const EdukiosProfilTutorView({super.key});

  @override
  State<EdukiosProfilTutorView> createState() {
    return _EdukiosProfilTutorViewState();
  }
}

class _EdukiosProfilTutorViewState extends State<EdukiosProfilTutorView> {
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
            "Profil Tutor",
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
                    padding: EdgeInsets.only(
                      top: 20.h,
                      bottom: 5.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Profil avatar
                        Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            CircleAvatar(
                              radius: 50.r,
                              backgroundImage: const CachedNetworkImageProvider(
                                "https://placeimg.com/90/90/people",
                              ),
                            ),
                            //Ready indicator
                            Positioned(
                              right: 10.w,
                              child: Icon(
                                Icons.circle,
                                size: 20.sp,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Nama Tutor",
                          style: textTheme.headlineMedium,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Guru Matematika \u2022 50 Tahun",
                          style: textTheme.bodySmall!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 2.w,
                          children: [
                            SizedBox(
                              height: 22.h,
                              child: Image.asset(
                                "assets/images/logo-edukios.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Text(
                              "Edukios Kebow Iwa Tenggara",
                              style: textTheme.bodySmall!.copyWith(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 5.h,
                  ),
                  //Tutor stats
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.h),
                    width: 320.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "9999",
                              style: textTheme.titleMedium,
                            ),
                            Text(
                              "Total Konsultasi",
                              style: textTheme.bodySmall,
                            ),
                          ],
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            PaketRating(
                              ratingCount: "4.9",
                              iconSize: 18.sp,
                              counterStyle: textTheme.titleMedium,
                            ),
                            Text(
                              "Ulasan",
                              style: textTheme.bodySmall,
                            ),
                          ],
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "93,5%",
                              style: textTheme.titleMedium,
                            ),
                            Text(
                              "Kepuasan",
                              style: textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 5.h,
                  ),
                  SizedBox(
                    height: 200.h,
                  ),
                  Divider(
                    thickness: 5.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.h),
                    width: 320.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ulasan",
                              style: textTheme.titleLarge,
                            ),
                            PaketRating(
                              ratingCount: "4.9",
                              iconSize: 18.sp,
                              counterStyle: textTheme.titleMedium,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        OverflowBar(
                          spacing: 5.w,
                          overflowSpacing: 3.h,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3.h, horizontal: 5.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.r),
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                              ),
                              child: Wrap(
                                direction: Axis.horizontal,
                                spacing: 3.w,
                                children: [
                                  Text(
                                    "Mudah Dipahami",
                                    style: textTheme.bodySmall,
                                  ),
                                  Text(
                                    "2k",
                                    style: textTheme.bodySmall!.copyWith(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3.h, horizontal: 5.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.r),
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                              ),
                              child: Wrap(
                                direction: Axis.horizontal,
                                spacing: 3.w,
                                children: [
                                  Text(
                                    "Ramah",
                                    style: textTheme.bodySmall,
                                  ),
                                  Text(
                                    "2k",
                                    style: textTheme.bodySmall!.copyWith(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3.h, horizontal: 5.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.r),
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                              ),
                              child: Wrap(
                                direction: Axis.horizontal,
                                spacing: 3.w,
                                children: [
                                  Text(
                                    "Komunikasi",
                                    style: textTheme.bodySmall,
                                  ),
                                  Text(
                                    "12",
                                    style: textTheme.bodySmall!.copyWith(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                          child: Divider(thickness: 3.h),
                        ),
                        Text(
                          "“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor feugiat vestibulum elit integer at ultrices porta sollicitudin eget. Sit faucibus habitant amet, fermentum. “",
                          style: textTheme.bodySmall,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Lihat Semua Ulasan",
                              textAlign: TextAlign.center,
                              style: textTheme.titleLarge!.copyWith(
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        persistentFooterButtons: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 1.sw,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40.h,
                    child: Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          "Rp. 60.000",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.grey,
                                    height: 1.2.h,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                        ),
                        Text(
                          "Rp. 30.000",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                color: Theme.of(context).primaryColor,
                                height: 1.2.h,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 126.w,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Konsultasi",
                        style:
                            textTheme.bodyMedium!.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]);
  }
}
