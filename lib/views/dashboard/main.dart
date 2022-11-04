import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';
import 'package:ulife/widgets/icons_notifbadge_widget.dart';
import 'package:banner_carousel/banner_carousel.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() {
    return _DashboardMainState();
  }
}

class _DashboardMainState extends State<DashboardMain> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          top: false,
          child: FractionallySizedBox(
            heightFactor: 1.0,
            widthFactor: 1.0,
            child: Column(
              children: [
                Column(
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 194.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/header-bg.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 30.h),
                        width: 320.w,
                        child: ListTile(
                          horizontalTitleGap: 9.w,
                          minVerticalPadding: 2.h,
                          leading: CircleAvatar(
                            backgroundImage: Image.network(
                              "https://placeimg.com/50/50/people",
                              height: 50.h,
                              width: 50.w,
                            ).image,
                          ),
                          title: Text(
                            "Miracle Culhane",
                            style: textTheme.bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          subtitle: Text(
                            "125.030.000 UCoin",
                            style: textTheme.bodySmall!
                                .copyWith(color: Colors.white70),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconsNotificationBadge(
                                counter: "12",
                                counterSize: 9.sp,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: LineIcon.shoppingCart(
                                    size: 32.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12.75.w,
                              ),
                              IconsNotificationBadge(
                                counter: "34",
                                counterSize: 9.sp,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: LineIcon.envelope(
                                    size: 32.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12.75.w,
                              ),
                              IconsNotificationBadge(
                                counter: "7",
                                counterSize: 9.sp,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: LineIcon.bell(
                                    size: 32.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -70.h),
                      child: BannerCarousel(
                        customizedBanners: [
                          Card(
                            child: Image.asset(
                              "assets/images/promo-banner-1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Card(
                            child: Image.asset(
                              "assets/images/promo-banner-2.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Card(
                            child: Image.asset(
                              "assets/images/promo-banner-3.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                        customizedIndicators: IndicatorModel.animation(
                            width: 5.w,
                            height: 5.h,
                            spaceBetween: 4.w,
                            widthAnimation: 27.w),
                        activeColor: Colors.indigo,
                        disableColor: Colors.grey,
                        animation: true,
                        borderRadius: 10.r,
                        height: 120.h,
                        width: 320.w,
                        indicatorBottom: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9.h,
                ),
                Transform.translate(
                  offset: Offset(0, -70.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 320.w,
                        child: Text(
                          "Kategori Paket",
                          style: textTheme.displaySmall,
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      SizedBox(
                        width: 320.w,
                        height: 150.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 102.w,
                              height: 150.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/paket-bg-indigo.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.r),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 17.h),
                                    child: Text(
                                      "UEducation",
                                      style: textTheme.displaySmall!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: Text(
                                      "Belajar lebih mudah menyenangkan dengan UEducation",
                                      textAlign: TextAlign.center,
                                      style: textTheme.bodySmall!.copyWith(
                                          color: Colors.white, fontSize: 9.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60.h,
                                    child: Image.asset(
                                      "assets/images/ueducation-illustration.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Container(
                              width: 102.w,
                              height: 150.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/paket-bg-red.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.r),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 17.h),
                                    child: Text(
                                      "UTalent",
                                      style: textTheme.displaySmall!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: Text(
                                      "Belajar lebih mudah menyenangkan dengan UTalent",
                                      textAlign: TextAlign.center,
                                      style: textTheme.bodySmall!.copyWith(
                                          color: Colors.white, fontSize: 9.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60.h,
                                    child: Image.asset(
                                      "assets/images/utalent-illustration.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Container(
                              width: 102.w,
                              height: 150.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/paket-bg-blue.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.r),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 17.h),
                                    child: Text(
                                      "codU",
                                      style: textTheme.displaySmall!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: Text(
                                      "Belajar lebih mudah menyenangkan dengan codU",
                                      textAlign: TextAlign.center,
                                      style: textTheme.bodySmall!.copyWith(
                                          color: Colors.white, fontSize: 9.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60.h,
                                    child: Image.asset(
                                      "assets/images/codu-illustration.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 320.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "UEducation",
                              style: textTheme.displaySmall,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Lihat semua",
                                  style: textTheme.displaySmall!
                                      .copyWith(color: Colors.indigo),
                                ),
                                const Icon(
                                  Icons.chevron_right_outlined,
                                  color: Colors.indigo,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      SizedBox(
                        height: 120.h,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              height: 120.h,
                              width: 320.w,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 10.h),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12.r),
                                          ),
                                          child: Image.asset(
                                            "assets/images/paket-leading-image.png",
                                            fit: BoxFit.fill,
                                            height: 100.h,
                                            width: 100.w,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 7.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.w,
                                                            vertical: 3.h),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.r)),
                                                        color: Colors
                                                            .indigo.shade200),
                                                    child: Text(
                                                      "Baca Tulis",
                                                      style: textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                        fontSize: 10.sp,
                                                        color: Colors.indigo,
                                                      ),
                                                    ),
                                                  ), //Paket chip
                                                  Text(
                                                    "Baca Tulis untuk TK",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: textTheme.bodyLarge!
                                                        .copyWith(
                                                            height: 1.5.h),
                                                  ), //Paket title
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Rp. 1.350.000",
                                                    style: textTheme.bodySmall!
                                                        .copyWith(
                                                      fontSize: 10.sp,
                                                      color: Colors.grey,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                    ),
                                                  ), //Initial price
                                                  Text(
                                                    "Rp. 350.000",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: textTheme.bodyLarge!
                                                        .copyWith(
                                                            color:
                                                                Colors.indigo,
                                                            height: 1.h),
                                                  ), //Discount price
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                        size: 15.sp,
                                                      ),
                                                      Text(
                                                        "4.9",
                                                        style: textTheme
                                                            .bodyLarge!
                                                            .copyWith(
                                                                color: Colors
                                                                    .amber,
                                                                height: 1.2.h),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
