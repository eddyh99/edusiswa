import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ulife/utils/extensions.dart';
import 'package:ulife/utils/functions.dart';
import 'package:ulife/widgets/outlinedtile_button_widget.dart';

class EdukiosKonsultasiView extends StatefulWidget {
  const EdukiosKonsultasiView({super.key});

  @override
  State<EdukiosKonsultasiView> createState() {
    return _EdukiosKonsultasiViewState();
  }
}

class _EdukiosKonsultasiViewState extends State<EdukiosKonsultasiView> {
  final List<Map<String, String>> _listMatpel = [
    {"nama": "Matematika", "logo": "math.png"},
    {"nama": "IPA", "logo": "laboratory.png"},
    {"nama": "IPS", "logo": "history.png"},
    {"nama": "Bahasa\nIndonesia", "logo": "indonesia.png"},
    {"nama": "Bahasa\nInggris", "logo": "britain.png"},
    {"nama": "PJOK", "logo": "sports.png"},
    {"nama": "PPKN", "logo": "garuda.png"},
  ];

  String? _selectedMatpel;
  JenisPertemuan? _jenisPertemuan;
  int _selectedKelas = 0;
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
                            "Pilih Jenis Konsultasi Kamu",
                            style: textTheme.titleLarge,
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          SizedBox(
                            width: 300.w,
                            child: GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 3,
                              mainAxisSpacing: 15.sp,
                              crossAxisSpacing: 15.sp,
                              children: [
                                for (Map<String, String> matpel
                                    in _listMatpel) ...[
                                  GestureDetector(
                                    onTap: () {
                                      if (mounted) {
                                        setState(() {
                                          _selectedMatpel != matpel["nama"]
                                              ? _selectedMatpel = matpel["nama"]
                                              : _selectedMatpel = null;
                                        });
                                      }
                                    },
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: _selectedMatpel == matpel["nama"]
                                            ? Colors.indigo.shade200
                                            : Colors.blueGrey.shade50,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/${matpel["logo"]}",
                                          ),
                                          Text(
                                            "${matpel["nama"]}",
                                            textAlign: TextAlign.center,
                                            style:
                                                textTheme.bodySmall!.copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 12.h),
                            width: 300.w,
                            child: Divider(thickness: 1.h),
                          ),
                          Text(
                            "Pilih Kelas Kamu",
                            style: textTheme.titleLarge,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          SizedBox(
                            height: 40.h,
                            width: 300.w,
                            child: OutlinedTileButton(
                              onPressed: () {
                                showPilihKelasBottomSheet(
                                        context: context,
                                        kelasCount: 9,
                                        currentKelas: _selectedKelas)
                                    .then((value) {
                                  printDebug(value);
                                  setState(() {
                                    if (value != null) {
                                      _selectedKelas = value;
                                    }
                                  });
                                });
                              },
                              text: Text(
                                _selectedKelas > 0
                                    ? "Kelas $_selectedKelas"
                                    : "Pilih Kelas",
                                style: textTheme.titleSmall,
                              ),
                              trailing: const Icon(
                                Icons.chevron_right,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Divider(
                            thickness: 5.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15.h, bottom: 20.h),
                            child: Text(
                              "Pilih Jenis Pertemuan untuk Konsultasi",
                              style: textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(
                            width: 300.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (mounted) {
                                      setState(() {
                                        _jenisPertemuan != JenisPertemuan.online
                                            ? _jenisPertemuan =
                                                JenisPertemuan.online
                                            : _jenisPertemuan = null;
                                      });
                                    }
                                  },
                                  child: Container(
                                    width: 144.w,
                                    height: 90.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: _jenisPertemuan ==
                                              JenisPertemuan.online
                                          ? Colors.indigo.shade200
                                          : Colors.blueGrey.shade50,
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Positioned(
                                          top: 10.h,
                                          child: Text(
                                            "ONLINE",
                                            style: textTheme.titleLarge,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0.0,
                                          child: SizedBox(
                                            height: 50.h,
                                            child: Image.asset(
                                              "assets/images/online-illustration.png",
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (mounted) {
                                      setState(() {
                                        _jenisPertemuan !=
                                                JenisPertemuan.offline
                                            ? _jenisPertemuan =
                                                JenisPertemuan.offline
                                            : _jenisPertemuan = null;
                                      });
                                    }
                                  },
                                  child: Container(
                                    width: 144.w,
                                    height: 90.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: _jenisPertemuan ==
                                              JenisPertemuan.offline
                                          ? Colors.indigo.shade200
                                          : Colors.blueGrey.shade50,
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Positioned(
                                          top: 10.h,
                                          child: Text(
                                            "OFFLINE",
                                            style: textTheme.titleLarge,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0.0,
                                          child: SizedBox(
                                            height: 50.h,
                                            child: Image.asset(
                                              "assets/images/offline-illustration.png",
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 300.w,
                            height: 35.h,
                            child: ElevatedButton(
                              onPressed: _selectedMatpel != null &&
                                      _jenisPertemuan != null &&
                                      _selectedKelas > 0
                                  ? () {
                                      Get.toNamed(
                                          "/dashboard/edukios/konsultasi/${_jenisPertemuan!.name}",
                                          arguments: {
                                            "matpel": _selectedMatpel,
                                            "kelas": _selectedKelas
                                          });
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                              ),
                              child: Text(
                                "KONSULTASI SEKARANG",
                                style: textTheme.bodyMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50.h,
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
