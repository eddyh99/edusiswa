import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ulife/utils/extensions.dart';
import 'package:ulife/widgets/cards_detailbadge_widget.dart';
import 'package:ulife/widgets/cards_ribbon_widget.dart';
import 'package:ulife/widgets/edukasidetail_text_widget.dart';
import 'package:ulife/widgets/paket_card_widget.dart';
import 'package:ulife/widgets/paket_chip_widget.dart';
import 'package:ulife/widgets/paket_rating_widget.dart';
import 'package:ulife/widgets/shimmer_card_widget.dart';

class EdukasiDetailView extends StatefulWidget {
  const EdukasiDetailView({super.key});

  @override
  State<EdukasiDetailView> createState() {
    return _EdukasiDetailViewState();
  }
}

class _EdukasiDetailViewState extends State<EdukasiDetailView> {
  final UEducation _edukasi = Get.arguments["edukasi"];

  final ExpandableController _expandableController =
      ExpandableController(initialExpanded: false);
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        child: FractionallySizedBox(
          heightFactor: 1.0,
          widthFactor: 1.0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 187.h,
                        width: 1.sw,
                        child: Image.asset(
                          "assets/images/paket-header-image.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back(closeOverlays: true);
                        },
                        child: Container(
                          height: 30.sp,
                          width: 30.sp,
                          margin: EdgeInsets.fromLTRB(20.w, 38.h, 0.0, 0.0),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r)),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            size: 24.sp,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -60.h),
                  child: Container(
                    width: 1.sw,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20.h),
                          width: 320.w,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _edukasi.title,
                                style: textTheme.displayLarge,
                              ),
                              SizedBox(
                                height: 80.sp,
                                width: 80.sp,
                                child: Image.asset(
                                  _edukasi.logoPath,
                                  fit: BoxFit.fitHeight,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ExpandablePanel(
                                controller: _expandableController,
                                collapsed: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing bibendum ligula urna rhoncus, pharetra. Imperdiet convallis fermentum velit iaculis in lorem aliquam.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: textTheme.bodySmall,
                                ),
                                expanded: const EdukasiDetailText(
                                  detailText:
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing bibendum ligula urna rhoncus, pharetra. Imperdiet convallis fermentum velit iaculis in lorem aliquam.',
                                  features: [
                                    "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit.",
                                    "Lorem ipsum dolor sit amet conse.",
                                    "Lorem ipsum dolor sit amet, conse ctetur adipiscing elit.",
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (mounted) {
                                    setState(() {
                                      _expandableController.toggle();
                                    });
                                  }
                                },
                                child: Row(
                                  children:
                                      _expandableController.expanded == false
                                          ? [
                                              Text(
                                                "Selengkapnya",
                                                style: textTheme.titleLarge,
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                size: 18.sp,
                                              ),
                                            ]
                                          : [
                                              Text(
                                                "Lebih sedikit",
                                                style: textTheme.titleLarge,
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up,
                                                size: 18.sp,
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
                          child: Text(
                            "Pilihan Kelas",
                            style: textTheme.displaySmall,
                          ),
                        ),
                        FutureBuilder(
                          future:
                              Future.delayed(const Duration(seconds: 2), () {}),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              return Column(
                                children: [
                                  //dummy data generate
                                  for (int x = 0; x < 3; x++) ...[
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed("/dashboard/paket-detail",
                                            arguments: {"paket": "ID00$x"});
                                      },
                                      child: PaketCard(
                                        height: 120.h,
                                        width: 320.w,
                                        borderRadius: 10.r,
                                        contentMargin: EdgeInsets.symmetric(
                                            horizontal: 10.sp, vertical: 10.sp),
                                        leadingImage: Image.asset(
                                          "assets/images/paket-leading-image.png",
                                          fit: BoxFit.cover,
                                          height: 100.sp,
                                          width: 100.sp,
                                        ),
                                        leadingBorderRadius: 12.r,
                                        title: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const PaketChip(text: "Berhitung"),
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                "Berhitung untuk TK",
                                                overflow: TextOverflow.ellipsis,
                                                style: textTheme.bodyLarge!
                                                    .copyWith(height: 1.3.h),
                                              ),
                                            ), //Paket title
                                          ],
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rp. 1.350.000",
                                              style:
                                                  textTheme.bodySmall!.copyWith(
                                                fontSize: 10.sp,
                                                color: Colors.grey,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ), //Initial price
                                            Text(
                                              "Rp. 350.000",
                                              overflow: TextOverflow.ellipsis,
                                              style: textTheme.bodyLarge!
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      height: 1.h),
                                            ), //Discount price
                                            const PaketRating(
                                                ratingCount: "4.9"),
                                          ],
                                        ),
                                        ribbon: const CardsRibbon(
                                            text: "Best Seller"),
                                        badge: const CardsBadge(text: "Detail"),
                                      ),
                                    ),
                                  ],
                                ],
                              );
                            }
                            return Column(
                              children: [
                                for (int x = 0; x < 3; x++) ...[
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  SizedBox(
                                    width: 320.w,
                                    child: const ShimmerCard(),
                                  ),
                                ]
                              ],
                            );
                          },
                        ),
                      ],
                    ),
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
