import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EdukiosMain extends StatefulWidget {
  const EdukiosMain({super.key});

  @override
  State<EdukiosMain> createState() {
    return _EdukiosMainState();
  }
}

class _EdukiosMainState extends State<EdukiosMain> {
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
                color: Colors.indigo.shade100,
              ),
              child: Icon(
                Icons.chevron_left,
                size: 24.sp,
                color: Colors.indigo,
              ),
            ),
          ),
        ),
        title: Text(
          "Edukios",
          style: textTheme.displayMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20.r,
            icon: Icon(
              Icons.menu,
              size: 24.sp,
              color: Colors.indigo,
            ),
          ),
        ],
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
                  width: 320.w,
                  margin: EdgeInsets.only(top: 25.h, bottom: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            "Miracle Culhane",
                            style: textTheme.headlineSmall,
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 2.w,
                            children: [
                              Text(
                                "Konsultasi:",
                                style: textTheme.bodySmall!.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "1/1",
                                style: textTheme.bodySmall,
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "Bronze Member",
                        style: textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.indigo,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 5.h,
                ),
                Container(
                  width: 320.w,
                  margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 8.w),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.sp,
                    crossAxisSpacing: 15.sp,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/square-bg-teal.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Positioned(
                              top: 40.h,
                              child: SizedBox(
                                height: 90.h,
                                child: Image.asset(
                                  "assets/images/konsultasi-illustration.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20.h,
                              child: Text(
                                "Konsutasi",
                                style: textTheme.displayMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/square-bg-amber.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Positioned(
                              top: 20.h,
                              child: SizedBox(
                                height: 120.h,
                                child: Image.asset(
                                  "assets/images/ajariteman-illustration.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20.h,
                              child: Text(
                                "Ajari Teman",
                                style: textTheme.displayMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/square-bg-indigo.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Positioned(
                              top: 60.h,
                              child: SizedBox(
                                height: 60.h,
                                child: Image.asset(
                                  "assets/images/paket-illustration.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20.h,
                              child: Text(
                                "Paket Edukios",
                                style: textTheme.displayMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 3.h,
                ),
                Container(
                  margin: EdgeInsets.only(top: 14.h, bottom: 17.h),
                  width: 320.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promo",
                        style: textTheme.displaySmall,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Wrap(
                          direction: Axis.horizontal,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "View more",
                              style: textTheme.bodySmall!
                                  .copyWith(color: Colors.grey),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.grey,
                              size: 16.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 70.h),
                  width: 320.w,
                  child: BannerCarousel(
                    margin: EdgeInsets.zero,
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
          ),
        ),
      ),
    );
  }
}
