import 'package:banner_carousel/banner_carousel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:ulife/widgets/cards_detailbadge_widget.dart';
import 'package:ulife/widgets/cards_ribbon_widget.dart';
import 'package:ulife/widgets/icons_notifbadge_widget.dart';
import 'package:ulife/widgets/kategoripaket_card_widget.dart';
import 'package:ulife/widgets/paket_card_widget.dart';
import 'package:ulife/widgets/paket_chip_widget.dart';
import 'package:ulife/widgets/paket_rating_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() {
    return _HomeViewState();
  }
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return FractionallySizedBox(
      heightFactor: 1.0,
      widthFactor: 1.0,
      child: SingleChildScrollView(
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
                        backgroundImage: CachedNetworkImageProvider(
                          "https://placeimg.com/50/50/people",
                          maxHeight: 50.h.toInt(),
                          maxWidth: 50.w.toInt(),
                        ),
                      ),
                      title: Text(
                        "Miracle Culhane",
                        style:
                            textTheme.bodyLarge!.copyWith(color: Colors.white),
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
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/dashboard/keranjang");
                            },
                            child: IconsNotificationBadge(
                              counter: "12",
                              counterSize: 9.sp,
                              child: LineIcon.shoppingCart(
                                size: 32.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12.75.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: IconsNotificationBadge(
                              counter: "34",
                              counterSize: 9.sp,
                              child: LineIcon.envelope(
                                size: 32.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12.75.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: IconsNotificationBadge(
                              counter: "7",
                              counterSize: 9.sp,
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
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/paket-kategori",
                                arguments: {"kategori": "UEducation"});
                          },
                          child: KategoriPaketCard(
                            height: 150.h,
                            width: 102.w,
                            backgroundImage:
                                "assets/images/paket-bg-indigo.png",
                            borderRadius: 8.r,
                            title: "UEducation",
                            subtitle:
                                "Belajar lebih mudah menyenangkan dengan UEducation",
                            illustrationImage:
                                "assets/images/ueducation-illustration.png",
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/paket-kategori",
                                arguments: {"kategori": "UTalent"});
                          },
                          child: KategoriPaketCard(
                            height: 150.h,
                            width: 102.w,
                            backgroundImage: "assets/images/paket-bg-red.png",
                            borderRadius: 8.r,
                            title: "UTalent",
                            subtitle:
                                "Belajar lebih mudah menyenangkan dengan UTalent",
                            illustrationImage:
                                "assets/images/utalent-illustration.png",
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/paket-kategori",
                                arguments: {"kategori": "codU"});
                          },
                          child: KategoriPaketCard(
                            height: 150.h,
                            width: 102.w,
                            backgroundImage: "assets/images/paket-bg-blue.png",
                            borderRadius: 8.r,
                            title: "codU",
                            subtitle:
                                "Belajar lebih mudah menyenangkan dengan codU",
                            illustrationImage:
                                "assets/images/codu-illustration.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 9.h,
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
                        GestureDetector(
                          onTap: () {},
                          child: Row(
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  //UEducation paket list
                  SizedBox(
                    height: 120.h,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      scrollDirection: Axis.horizontal,
                      children: [
                        //dummy data generate
                        for (int x = 0; x < 3; x++) ...[
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/dashboard/paket-detail",
                                  arguments: {"paket": "ID00$x"});
                            },
                            child: PaketCard(
                              height: 120.h,
                              width: 320.w,
                              margin:
                                  x < 2 ? EdgeInsets.only(right: 20.w) : null,
                              borderRadius: 10.r,
                              contentMargin: EdgeInsets.symmetric(
                                  horizontal: 10.sp, vertical: 10.sp),
                              leadingImage: Image.asset(
                                "assets/images/paket-leading-image.png",
                                fit: BoxFit.fill,
                                height: 100.sp,
                                width: 100.sp,
                              ),
                              leadingBorderRadius: 12.r,
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const PaketChip(text: "Baca Tulis"),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Baca Tulis untuk TK",
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.bodyLarge!
                                          .copyWith(height: 1.3.h),
                                    ),
                                  ), //Paket title
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rp. 1.350.000",
                                    style: textTheme.bodySmall!.copyWith(
                                      fontSize: 10.sp,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ), //Initial price
                                  Text(
                                    "Rp. 350.000",
                                    overflow: TextOverflow.ellipsis,
                                    style: textTheme.bodyLarge!.copyWith(
                                        color: Colors.indigo, height: 1.h),
                                  ), //Discount price
                                  const PaketRating(ratingCount: "4.9"),
                                ],
                              ),
                              ribbon: const CardsRibbon(text: "Best Seller"),
                              badge: const CardsBadge(text: "Detail"),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  SizedBox(
                    width: 320.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "UTalent",
                          style: textTheme.displaySmall,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  //UTalent paket list
                  SizedBox(
                    height: 120.h,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      scrollDirection: Axis.horizontal,
                      children: [
                        //dummy data generate
                        for (int x = 0; x < 3; x++) ...[
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/dashboard/paket-detail",
                                  arguments: {"paket": "ID00$x"});
                            },
                            child: PaketCard(
                              height: 120.h,
                              width: 320.w,
                              margin:
                                  x < 2 ? EdgeInsets.only(right: 20.w) : null,
                              borderRadius: 10.r,
                              contentMargin: EdgeInsets.symmetric(
                                  horizontal: 10.sp, vertical: 10.sp),
                              leadingImage: Image.asset(
                                "assets/images/paket-leading-image.png",
                                fit: BoxFit.fill,
                                height: 100.sp,
                                width: 100.sp,
                              ),
                              leadingBorderRadius: 12.r,
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const PaketChip(text: "Baca Tulis"),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Baca Tulis untuk TK",
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.bodyLarge!
                                          .copyWith(height: 1.3.h),
                                    ),
                                  ), //Paket title
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rp. 1.350.000",
                                    style: textTheme.bodySmall!.copyWith(
                                      fontSize: 10.sp,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ), //Initial price
                                  Text(
                                    "Rp. 350.000",
                                    overflow: TextOverflow.ellipsis,
                                    style: textTheme.bodyLarge!.copyWith(
                                        color: Colors.indigo, height: 1.h),
                                  ), //Discount price
                                  const PaketRating(ratingCount: "4.9"),
                                ],
                              ),
                              ribbon: const CardsRibbon(text: "Best Seller"),
                              badge: const CardsBadge(text: "Detail"),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 9.h,
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
                        GestureDetector(
                          onTap: () {},
                          child: Row(
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  //codU paket list
                  SizedBox(
                    height: 120.h,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      scrollDirection: Axis.horizontal,
                      children: [
                        //dummy data generate
                        for (int x = 0; x < 3; x++) ...[
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/dashboard/paket-detail",
                                  arguments: {"paket": "ID00$x"});
                            },
                            child: PaketCard(
                              height: 120.h,
                              width: 320.w,
                              margin:
                                  x < 2 ? EdgeInsets.only(right: 20.w) : null,
                              borderRadius: 10.r,
                              contentMargin: EdgeInsets.symmetric(
                                  horizontal: 10.sp, vertical: 10.sp),
                              leadingImage: Image.asset(
                                "assets/images/paket-leading-image.png",
                                fit: BoxFit.fill,
                                height: 100.sp,
                                width: 100.sp,
                              ),
                              leadingBorderRadius: 12.r,
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const PaketChip(text: "Baca Tulis"),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Baca Tulis untuk TK",
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.bodyLarge!
                                          .copyWith(height: 1.3.h),
                                    ),
                                  ), //Paket title
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rp. 1.350.000",
                                    style: textTheme.bodySmall!.copyWith(
                                      fontSize: 10.sp,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ), //Initial price
                                  Text(
                                    "Rp. 350.000",
                                    overflow: TextOverflow.ellipsis,
                                    style: textTheme.bodyLarge!.copyWith(
                                        color: Colors.indigo, height: 1.h),
                                  ), //Discount price
                                  const PaketRating(ratingCount: "4.9"),
                                ],
                              ),
                              ribbon: const CardsRibbon(text: "Best Seller"),
                              badge: const CardsBadge(text: "Detail"),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
