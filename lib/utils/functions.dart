import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulife/widgets/outlinedtile_button_widget.dart';

void printDebug(Object? object) {
  if (kDebugMode) {
    print(object);
  }
}

Future<int?> showPilihKelasBottomSheet(
    {required BuildContext context,
    required int kelasCount,
    int currentKelas = 0}) async {
  int? selectedKelas = currentKelas > 0 ? currentKelas : null;
  return await showModalBottomSheet<int>(
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r))),
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Pilih Kelas",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.h, bottom: 30.h),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.sp,
                    crossAxisSpacing: 10.sp,
                    childAspectRatio: 100.2 / 30.h,
                    children: [
                      for (int x = 1; x <= kelasCount; x++) ...[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedKelas = x;
                            });
                          },
                          child: UnconstrainedBox(
                            child: Container(
                              height: 30.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Colors.indigo,
                              ),
                              child: Container(
                                margin: EdgeInsets.all(1.sp),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  color: selectedKelas == x
                                      ? Colors.indigo
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "Kelas $x",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: selectedKelas == x
                                                ? Colors.white
                                                : Colors.indigo),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  width: 320.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, selectedKelas);
                    },
                    child: const Text("Pilih Kelas"),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          );
        },
      );
    },
  );
}

Future<String?> showLokasiBottomSheet(
    {required BuildContext context,
    required String lokasiType,
    String? currentLocationID}) async {
  return await showModalBottomSheet<String>(
    isScrollControlled: true,
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r))),
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Lokasi ${lokasiType[0].toUpperCase()}${lokasiType.substring(1)}",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.h, bottom: 30.h),
                  width: 320.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5.h,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              "Provinsi",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(
                            height: 45.h,
                            width: 320.w,
                            child: OutlinedTileButton(
                              onPressed: () {},
                              leading: Text(
                                "Pilih Provinsi",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              trailing: const Icon(
                                Icons.chevron_right,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5.h,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              "Kabupaten / Kota",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(
                            height: 45.h,
                            width: 320.w,
                            child: OutlinedTileButton(
                              onPressed: () {},
                              leading: Text(
                                "Pilih Kabupaten / Kota",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              trailing: const Icon(
                                Icons.chevron_right,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5.h,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              "Kecamatan",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(
                            height: 45.h,
                            width: 320.w,
                            child: OutlinedTileButton(
                              onPressed: () {},
                              leading: Text(
                                "Pilih kecamatan",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              trailing: const Icon(
                                Icons.chevron_right,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5.h,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              "${lokasiType[0].toUpperCase()}${lokasiType.substring(1)}",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(
                            height: 45.h,
                            width: 320.w,
                            child: OutlinedTileButton(
                              onPressed: () {},
                              leading: Text(
                                "Pilih ${lokasiType[0].toUpperCase()}${lokasiType.substring(1)}",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              trailing: const Icon(
                                Icons.chevron_right,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  width: 320.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: const Text("Pilih Lokasi"),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
