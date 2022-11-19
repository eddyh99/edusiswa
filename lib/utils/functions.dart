import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/lokasi_controller.dart';
import '../controllers/outlet_controller.dart';
import '../utils/extensions.dart';
import '../widgets/lokasi_fullscreen_widget.dart';
import '../widgets/outlets_fullscreen_widget.dart';
import '../widgets/outlinedtile_button_widget.dart';

void printDebug(Object? object) {
  if (kDebugMode) {
    print(object);
  }
}

Future<JenisKelamin?> showJenisKelaminMenu({
  required BuildContext context,
}) async {
  return await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(180.w, 400.h, 180.w, 400.h),
      items: [
        PopupMenuItem(
          value: JenisKelamin.laki,
          child: Text(
            "Laki-laki",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        PopupMenuItem(
          value: JenisKelamin.perempuan,
          child: Text(
            "Perempuan",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
      elevation: 8.0);
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
                              selectedKelas = selectedKelas == x ? null : x;
                            });
                          },
                          child: UnconstrainedBox(
                            child: Container(
                              height: 30.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Container(
                                margin: EdgeInsets.all(1.sp),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  color: selectedKelas == x
                                      ? Theme.of(context).primaryColor
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
                                                : Theme.of(context)
                                                    .primaryColor),
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
                    onPressed: selectedKelas != null
                        ? () {
                            Navigator.pop(context, selectedKelas);
                          }
                        : null,
                    child: Text(
                      "Pilih Kelas",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
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

Future<Map<String, String>?> showLokasiBottomSheet(
    {required BuildContext context,
    required String lokasiType,
    String? currentLocationID}) async {
  Map<String, String>? selectedProvinsi;
  Map<String, String>? selectedKabupatenKota;
  Map<String, String>? selectedKecamatan;
  Map<String, String>? selectedOutlet;
  return await showModalBottomSheet<Map<String, String>?>(
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PilihLokasiFullScreen(
                                              listLokasi:
                                                  LokasiController.provinsi),
                                    )).then((value) => setState(() {
                                      selectedProvinsi = value;
                                      selectedKabupatenKota = null;
                                      selectedKecamatan = null;
                                      selectedOutlet = null;
                                    }));
                              },
                              leading: Text(
                                selectedProvinsi == null
                                    ? "Pilih Provinsi"
                                    : selectedProvinsi!["nama"]!,
                                style: Theme.of(context).textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).primaryColor,
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
                              onPressed: selectedProvinsi != null
                                  ? () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PilihLokasiFullScreen(
                                                    listLokasi: LokasiController
                                                        .getKabupatenKotaByProvinsi(
                                                            selectedProvinsi![
                                                                "id"]!)),
                                          )).then((value) => setState(() {
                                            selectedKabupatenKota = value;
                                            selectedKecamatan = null;
                                            selectedOutlet = null;
                                          }));
                                    }
                                  : null,
                              leading: Text(
                                selectedKabupatenKota == null
                                    ? "Pilih Kabupaten / Kota"
                                    : selectedKabupatenKota!["nama"]!,
                                style: Theme.of(context).textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).primaryColor,
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
                              onPressed: selectedKabupatenKota != null
                                  ? () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PilihLokasiFullScreen(
                                                    listLokasi: LokasiController
                                                        .getKecamatanByKabupatenKota(
                                                            selectedKabupatenKota![
                                                                "id"]!)),
                                          )).then((value) => setState(() {
                                            selectedKecamatan = value;
                                            selectedOutlet = null;
                                          }));
                                    }
                                  : null,
                              leading: Text(
                                selectedKecamatan == null
                                    ? "Pilih Kecamatan"
                                    : selectedKecamatan!["nama"]!,
                                style: Theme.of(context).textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).primaryColor,
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
                              onPressed: selectedKecamatan != null
                                  ? () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PilihOutletsFullScreen(
                                                    listOutlets:
                                                        OutletController
                                                            .outlets),
                                          )).then((value) => setState(() {
                                            selectedOutlet = value;
                                          }));
                                    }
                                  : null,
                              leading: Text(
                                selectedOutlet != null
                                    ? selectedOutlet!["nama"]!
                                    : "Pilih ${lokasiType[0].toUpperCase()}${lokasiType.substring(1)}",
                                style: Theme.of(context).textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).primaryColor,
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
                    onPressed: selectedOutlet != null
                        ? () {
                            Navigator.pop(context, selectedOutlet);
                          }
                        : null,
                    child: Text(
                      "Pilih Lokasi",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
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
