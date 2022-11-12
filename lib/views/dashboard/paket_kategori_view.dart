import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ulife/utils/extensions.dart';
import 'package:ulife/widgets/cards_detailbadge_widget.dart';
import 'package:ulife/widgets/paket_card_widget.dart';

class PaketKategoriView extends StatefulWidget {
  const PaketKategoriView({super.key});

  @override
  State<PaketKategoriView> createState() {
    return _PaketKategoriViewState();
  }
}

class _PaketKategoriViewState extends State<PaketKategoriView> {
  final String _kategoriName = Get.arguments["kategori"];
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
                            color: Colors.indigo,
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
                        Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Text(
                            _kategoriName,
                            style: textTheme.displayLarge,
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: Text.rich(
                            const TextSpan(
                                text:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae fringilla eleifend pretium elit. Ullamcorper ultrices sagittis, faucibus pulvinar donec ornare amet."),
                            style: textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SizedBox(
                          width: 320.w,
                          child: Text(
                            "Pilihan Edukasi",
                            textAlign: TextAlign.left,
                            style: textTheme.displaySmall,
                          ),
                        ),
                        SizedBox(
                          height: 23.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/edukios/");
                          },
                          child: PaketCard(
                            height: 120.h,
                            width: 320.w,
                            borderRadius: 8.r,
                            contentMargin: EdgeInsets.symmetric(
                                horizontal: 15.sp, vertical: 15.sp),
                            leadingImage: Image.asset(
                              UEducation.edukios.logoPath,
                              fit: BoxFit.fill,
                              height: 65.sp,
                              width: 65.sp,
                            ),
                            title: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                UEducation.edukios.title,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.displaySmall,
                              ),
                            ),
                            subtitle: Text(
                              "Konsultasi Belajar siswa, untuk memahami hal yang tidak dimengeri siswa",
                              style: textTheme.bodySmall!
                                  .copyWith(fontSize: 10.sp),
                            ),
                            badge: const CardsBadge(text: "Lihat"),
                            ribbon: const SizedBox.shrink(),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/edukasi-detail",
                                arguments: {
                                  "edukasi": UEducation.edukidz,
                                });
                          },
                          child: PaketCard(
                            height: 120.h,
                            width: 320.w,
                            borderRadius: 8.r,
                            contentMargin: EdgeInsets.symmetric(
                                horizontal: 15.sp, vertical: 15.sp),
                            leadingImage: Image.asset(
                              UEducation.edukidz.logoPath,
                              fit: BoxFit.fill,
                              height: 65.sp,
                              width: 65.sp,
                            ),
                            title: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                UEducation.edukidz.title,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.displaySmall,
                              ),
                            ),
                            subtitle: Text(
                              "Kursus belajar untuk anak usia 3-6 Tahun",
                              style: textTheme.bodySmall!
                                  .copyWith(fontSize: 10.sp),
                            ),
                            badge: const CardsBadge(text: "Lihat"),
                            ribbon: const SizedBox.shrink(),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/edukasi-detail",
                                arguments: {
                                  "edukasi": UEducation.speakizy,
                                });
                          },
                          child: PaketCard(
                            height: 120.h,
                            width: 320.w,
                            borderRadius: 8.r,
                            contentMargin: EdgeInsets.symmetric(
                                horizontal: 15.sp, vertical: 15.sp),
                            leadingImage: Image.asset(
                              UEducation.speakizy.logoPath,
                              fit: BoxFit.fill,
                              height: 65.sp,
                              width: 65.sp,
                            ),
                            title: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                UEducation.speakizy.title,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.displaySmall,
                              ),
                            ),
                            subtitle: Text(
                              "Kursus untuk anak yang ingin fokus melatih speaking berbahasa inggris",
                              style: textTheme.bodySmall!
                                  .copyWith(fontSize: 10.sp),
                            ),
                            badge: const CardsBadge(text: "Lihat"),
                            ribbon: const SizedBox.shrink(),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/edukasi-detail",
                                arguments: {"edukasi": UEducation.creativo});
                          },
                          child: PaketCard(
                            height: 120.h,
                            width: 320.w,
                            borderRadius: 8.r,
                            contentMargin: EdgeInsets.symmetric(
                                horizontal: 15.sp, vertical: 15.sp),
                            leadingImage: Image.asset(
                              UEducation.creativo.logoPath,
                              fit: BoxFit.fill,
                              height: 65.sp,
                              width: 65.sp,
                            ),
                            title: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                UEducation.creativo.title,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.displaySmall,
                              ),
                            ),
                            subtitle: Text(
                              "Kursus belajar untuk anak SD sampai SMA",
                              style: textTheme.bodySmall!
                                  .copyWith(fontSize: 10.sp),
                            ),
                            badge: const CardsBadge(text: "Lihat"),
                            ribbon: const SizedBox.shrink(),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/edukasi-detail",
                                arguments: {
                                  "edukasi": UEducation.privatecreativo,
                                });
                          },
                          child: PaketCard(
                            height: 120.h,
                            width: 320.w,
                            borderRadius: 8.r,
                            contentMargin: EdgeInsets.symmetric(
                                horizontal: 15.sp, vertical: 15.sp),
                            leadingImage: Image.asset(
                              UEducation.privatecreativo.logoPath,
                              fit: BoxFit.fill,
                              height: 65.sp,
                              width: 65.sp,
                            ),
                            title: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                UEducation.creativo.title,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.displaySmall,
                              ),
                            ),
                            subtitle: Text(
                              "Kursus Private untuk kalangan SD sampai Umum",
                              style: textTheme.bodySmall!
                                  .copyWith(fontSize: 10.sp),
                            ),
                            badge: const CardsBadge(text: "Lihat"),
                            ribbon: const SizedBox.shrink(),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("/dashboard/edukasi-detail",
                                arguments: {
                                  "edukasi": UEducation.shiyong,
                                });
                          },
                          child: PaketCard(
                            height: 120.h,
                            width: 320.w,
                            borderRadius: 8.r,
                            contentMargin: EdgeInsets.symmetric(
                                horizontal: 15.sp, vertical: 15.sp),
                            leadingImage: Image.asset(
                              UEducation.shiyong.logoPath,
                              fit: BoxFit.fill,
                              height: 65.sp,
                              width: 65.sp,
                            ),
                            title: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                UEducation.shiyong.title,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.displaySmall,
                              ),
                            ),
                            subtitle: Text(
                              "Bagi kalian yang ingin belajar bahasa mandarin",
                              style: textTheme.bodySmall!
                                  .copyWith(fontSize: 10.sp),
                            ),
                            badge: const CardsBadge(text: "Lihat"),
                            ribbon: const SizedBox.shrink(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
