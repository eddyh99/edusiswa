import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/outlinedtile_button_widget.dart';

class PembayaranDetailView extends StatefulWidget {
  const PembayaranDetailView({super.key});

  @override
  State<PembayaranDetailView> createState() {
    return _PembayaranDetailViewState();
  }
}

class _PembayaranDetailViewState extends State<PembayaranDetailView> {
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
          "Detail Pembayaran",
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
                  height: 22.h,
                ),
                //Akun user yang belanja
                SizedBox(
                  width: 320.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Miracle Culhane",
                        style: textTheme.headlineSmall,
                      ),
                      Text(
                        "miracleculhane@gmail.com",
                        style: textTheme.bodySmall,
                      ),
                      Text(
                        "08199933377722",
                        style: textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Divider(
                  thickness: 5.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 13.h, horizontal: 20.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Produk",
                      style: textTheme.titleLarge,
                    ),
                  ),
                ),

                //Produk yang akan dibayar
                for (int x = 0; x < 3; x++) ...[
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      SizedBox(
                        width: 320.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.r),
                                ),
                                child: Image.asset(
                                  "assets/images/paket-leading-image.png",
                                  fit: BoxFit.cover,
                                  height: 75.sp,
                                  width: 75.sp,
                                ),
                              ),
                              title: Text(
                                "Membership Edukios Paket Platinum Super Pack",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              subtitle: Text(
                                "Rp. 350.000",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor),
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            SizedBox(
                              width: 320.w,
                              height: 40.h,
                              child: OutlinedTileButton(
                                onPressed: () {},
                                leading: Icon(
                                  Icons.av_timer,
                                  size: 22.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                text: Text(
                                  "Pilih Durasi Langganan",
                                  style: textTheme.bodySmall,
                                ),
                                trailing: Icon(
                                  Icons.chevron_right,
                                  size: 22.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Divider(
                        thickness: 1.h,
                      ),
                      SizedBox(
                        height: 30.h,
                        width: 320.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subtotal",
                              style: textTheme.titleMedium,
                            ),
                            Text(
                              "Rp. 350.000",
                              style: textTheme.titleMedium!.copyWith(
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 5.h,
                  ),
                ],

                //Jenis Pembayaran
                Container(
                  width: 320.w,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jenis Pembayaran",
                        style: textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        child: OutlinedTileButton(
                          onPressed: () {},
                          text: Text(
                            "Pilih Jenis Pembayaran",
                            style: textTheme.bodySmall,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            size: 22.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(
                  thickness: 5.h,
                ),

                //Voucher
                Container(
                  width: 320.w,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Voucher",
                        style: textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        child: OutlinedTileButton(
                          onPressed: () {},
                          text: Text(
                            "Masukkan Kode Voucher",
                            style: textTheme.bodySmall,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            size: 22.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(
                  thickness: 5.h,
                ),

                //Rincian Pembayaran
                Container(
                  width: 320.w,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rincian Pembayaran",
                        style: textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal Produk",
                                  style: textTheme.bodySmall),
                              Text("Rp. 1.050.000", style: textTheme.bodySmall),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Pajak 11%", style: textTheme.bodySmall),
                              Text("Rp. 115.500", style: textTheme.bodySmall),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Pembayaran",
                                  style: textTheme.bodySmall),
                              Text(
                                "Rp. 1.165.500",
                                style: textTheme.bodySmall!.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //extra white space
                SizedBox(
                  height: 70.h,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          width: 1.sw,
          height: 60.h,
          child: Row(
            children: [
              SizedBox(
                width: 200.w,
                height: 60.h,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 8.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Total Harga:",
                        textAlign: TextAlign.left,
                        style: textTheme.bodyMedium,
                      ),
                      Text(
                        "Rp. 1.165.500",
                        textAlign: TextAlign.right,
                        style: textTheme.titleLarge!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 160.w,
                height: 60.h,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/dashboard/metode-pembayaran");
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0.0)),
                    ),
                  ),
                  child: Text("Pilih Pembayaran",
                      style:
                          textTheme.titleLarge!.copyWith(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
