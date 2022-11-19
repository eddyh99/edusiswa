import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/functions.dart';
import '../../../widgets/card_edukios_tutor_widget.dart';
import '../../../widgets/outlinedtile_button_widget.dart';
import '../../../widgets/shimmer_card_widget.dart';

class EdukiosKonsultasiOfflineView extends StatefulWidget {
  const EdukiosKonsultasiOfflineView({super.key});

  @override
  State<EdukiosKonsultasiOfflineView> createState() {
    return _EdukiosKonsultasiOfflineViewState();
  }
}

class _EdukiosKonsultasiOfflineViewState
    extends State<EdukiosKonsultasiOfflineView> {
  Map<String, String>? _eduhubLocation;
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
          "Edukios",
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
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: Center(
                    child: Text(
                      "Konsultasi",
                      style: textTheme.displayMedium,
                    ),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(15, 72, 128, 128),
                        blurRadius: 40.sp,
                      ),
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 25.h),
                      width: 1.sw,
                      child: Column(
                        children: [
                          Text(
                            "Lokasi Eduhub Terdekat",
                            style: textTheme.titleLarge,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 300.w,
                            height: 45.h,
                            child: OutlinedTileButton(
                              onPressed: () {
                                showLokasiBottomSheet(
                                        context: context, lokasiType: "eduhub")
                                    .then((value) => setState(() {
                                          _eduhubLocation = value;
                                        }));
                              },
                              leading: Text(
                                _eduhubLocation == null
                                    ? "Lokasi Eduhub"
                                    : _eduhubLocation!["nama"]!,
                                style: textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          _eduhubLocation == null
                              ? SizedBox(
                                  height: 450.h,
                                  width: 320.w,
                                  child: Center(
                                    child: Text(
                                      "Pilih Lokasi Eduhub",
                                      style: textTheme.titleSmall!.copyWith(
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    SizedBox(
                                      width: 300.w,
                                      child: Text(
                                        "Tutor Pilihan untuk Konsultasi Kamu",
                                        style: textTheme.titleLarge,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      width: 320.w,
                                      child: FutureBuilder(
                                        future: Future.delayed(
                                            const Duration(seconds: 3), () {}),
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.done) {
                                            return ListView.separated(
                                              shrinkWrap: true,
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              itemCount: 3,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                  height: 15.h,
                                                );
                                              },
                                              itemBuilder: (context, index) {
                                                return CardEdukiosTutor(
                                                  avatarImage:
                                                      CachedNetworkImageProvider(
                                                    "https://placeimg.com/${(5 + index)}0/${(5 + index)}0/people",
                                                  ),
                                                  nama: "Nama Tutor $index",
                                                  ratingCount: "4.9",
                                                  description:
                                                      "Guru Matematika \u2022 50 Tahun",
                                                  isReady:
                                                      index == 0 ? false : true,
                                                  location:
                                                      "Edukios KeboIwa Tenggara",
                                                  discountedPrice: "Rp. 60.000",
                                                  price: "Rp. 20.000",
                                                  onButtonPressed: () {
                                                    Get.toNamed(
                                                        "/dashboard/edukios/konsultasi/tutor");
                                                  },
                                                );
                                              },
                                            );
                                          }
                                          return ListView.separated(
                                              shrinkWrap: true,
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              itemCount: 3,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                  height: 15.h,
                                                );
                                              },
                                              itemBuilder: (context, index) {
                                                return const ShimmerCard();
                                              });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
