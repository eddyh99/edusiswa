import 'package:banner_carousel/banner_carousel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../views/dashboard/paketdetailtabs/materi_tab_view.dart';
import '../../views/dashboard/paketdetailtabs/review_tab_view.dart';
import '../../views/dashboard/paketdetailtabs/tentang_tab_view.dart';
import '../../widgets/icons_notifbadge_widget.dart';
import '../../widgets/keepalivepage_widget.dart';
import '../../widgets/paket_chip_widget.dart';
import '../../widgets/paket_rating_widget.dart';

class PaketDetailView extends StatefulWidget {
  const PaketDetailView({super.key});

  @override
  State<PaketDetailView> createState() {
    return _PaketDetailViewState();
  }
}

class _PaketDetailViewState extends State<PaketDetailView> {
  // ignore: unused_field
  final String _paketID = Get.arguments["paket"];
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        top: false,
        child: DefaultTabController(
          length: 3,
          child: FractionallySizedBox(
            heightFactor: 1.0,
            widthFactor: 1.0,
            child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  SliverToBoxAdapter(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        children: [
                          Container(
                            height: 253.h,
                            width: 1.sw,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.grey.shade200
                                    : Colors.grey.shade800,
                            child: BannerCarousel(
                              margin: EdgeInsets.zero,
                              borderRadius: 0.0,
                              height: 253.h,
                              width: 1.sw,
                              indicatorBottom: false,
                              customizedBanners: [
                                for (int x = 0; x < 5; x++) ...[
                                  CachedNetworkImage(
                                    imageUrl:
                                        "https://placeimg.com/640/480/nature",
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Center(
                                      child: Icon(
                                        Icons.image_not_supported_rounded,
                                        size: 40.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                              customizedIndicators: IndicatorModel.animation(
                                  width: 5.w,
                                  height: 5.h,
                                  spaceBetween: 4.w,
                                  widthAnimation: 27.w),
                              activeColor: Theme.of(context).primaryColor,
                              disableColor: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.0),
                            child: ListTile(
                              leading: GestureDetector(
                                onTap: () {
                                  Get.back(closeOverlays: true);
                                },
                                child: Container(
                                  height: 30.sp,
                                  width: 30.sp,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r)),
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                  child: Icon(
                                    Icons.chevron_left,
                                    size: 24.sp,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
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
                                      child: Icon(
                                        LineIcons.shoppingCart,
                                        size: 32.sp,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12.75.w,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      LineIcons.alternateShare,
                                      size: 32.sp,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    toolbarHeight: 120.h,
                    elevation: 0.0,
                    shape: Border(
                        bottom: BorderSide(
                            color: Theme.of(context).dividerColor, width: 3.h)),
                    flexibleSpace: Column(
                      children: [
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: 320.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rp. 350.000",
                                style: textTheme.displayMedium,
                              ), //Discount price
                              IconButton(
                                onPressed: () {},
                                splashRadius: 25.r,
                                icon: Icon(
                                  Icons.favorite_outline,
                                  color: Theme.of(context).primaryColor,
                                  size: 24.sp,
                                ),
                              ), // Favorite
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 320.w,
                          child: Text(
                            "Rp. 1.350.000",
                            style: textTheme.titleSmall!.copyWith(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              height: 0.5.h,
                            ),
                          ), //Initial price
                        ),
                        SizedBox(height: 15.h),
                        SizedBox(
                          width: 320.w,
                          child: Row(
                            children: [
                              const PaketChip(text: "Baca Tulis"),
                              SizedBox(
                                width: 7.w,
                              ),
                              PaketRating(
                                ratingCount: "4.9",
                                counterStyle: textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 320.w,
                          child: Text(
                            "Berhitung untuk Anak TK",
                            style: textTheme.headlineMedium,
                          ), //Pake title
                        ),
                        SizedBox(height: 10.h),
                        Divider(
                          thickness: 3.h,
                        ),
                      ],
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size(1.sw, 60.h),
                      child: TabBar(
                        labelPadding: EdgeInsets.only(bottom: 10.h),
                        splashFactory: NoSplash.splashFactory,
                        tabs: [
                          Text(
                            "Tentang",
                            style: textTheme.displaySmall!.copyWith(
                                color: Theme.of(context).primaryColor),
                          ),
                          Text(
                            "Materi",
                            style: textTheme.displaySmall!.copyWith(
                                color: Theme.of(context).primaryColor),
                          ),
                          Text(
                            "Review",
                            style: textTheme.displaySmall!.copyWith(
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                children: [
                  KeepAlivePage(child: TentangTabView()),
                  KeepAlivePage(child: MateriTabView()),
                  KeepAlivePage(child: ReviewTabView()),
                ],
              ),
            ),
          ),
        ),
      ),
      persistentFooterButtons: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 1.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                  width: 149.w,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Beli Sekarang",
                      style: textTheme.bodyMedium!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  height: 40.h,
                  width: 149.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Tambah Keranjang",
                      style:
                          textTheme.bodyMedium!.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
