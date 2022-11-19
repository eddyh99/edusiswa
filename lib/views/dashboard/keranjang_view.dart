import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/tile_keranjang_widget.dart';

class KeranjangView extends StatefulWidget {
  const KeranjangView({super.key});

  @override
  State<KeranjangView> createState() {
    return _KeranjangViewState();
  }
}

class _KeranjangViewState extends State<KeranjangView> {
  bool _selectAll = false;
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
          "Keranjang",
          style: textTheme.displayMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: FractionallySizedBox(
          heightFactor: 1.0,
          widthFactor: 1.0,
          child: Column(
            children: [
              SizedBox(
                height: 22.h,
              ),
              SizedBox(
                width: 320.w,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: Checkbox(
                        value: _selectAll,
                        onChanged: (value) {
                          if (mounted) {
                            setState(() {
                              _selectAll = value == true ? true : false;
                            });
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "Pilih semua",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Divider(
                thickness: 2.h,
              ),
              Expanded(
                child: SizedBox(
                  width: 1.sw,
                  child: ListView(
                    children: [
                      for (int x = 0; x < 3; x++) ...[
                        TileKeranjang(
                          margin: EdgeInsets.symmetric(
                              vertical: 3.h, horizontal: 3.w),
                          isChecked: false,
                          onCheckboxChanged: (value) {},
                          leading: Image.asset(
                            "assets/images/paket-leading-image.png",
                            fit: BoxFit.cover,
                            height: 75.sp,
                            width: 75.sp,
                          ),
                          paketTitle: "Membership Edukios Paket Platinum",
                          paketPrice: "Rp. 350.000",
                          onRemoved: () {},
                        ),
                        Divider(
                          thickness: 2.h,
                          indent: 20.w,
                          endIndent: 20.w,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
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
                        "Rp. 1.050.000",
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
                    Get.toNamed("/dashboard/detail-pembayaran");
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0.0)),
                    ),
                  ),
                  child: Text("Beli",
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
