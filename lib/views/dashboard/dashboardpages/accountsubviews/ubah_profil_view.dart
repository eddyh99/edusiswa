import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../../utils/extensions.dart';
import '../../../../utils/functions.dart';
import '../../../../widgets/textfield_ubahprofil_widget.dart';

class UbahProfilView extends StatefulWidget {
  const UbahProfilView({super.key});

  @override
  State<UbahProfilView> createState() {
    return _UbahProfilViewState();
  }
}

class _UbahProfilViewState extends State<UbahProfilView> {
  final DateFormat _dateFormat = DateFormat("dd MMMM yyyy");
  final TextEditingController _namaTextController = TextEditingController();
  final TextEditingController _userTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _hpTextController = TextEditingController();

  late JenisKelamin _jenisKelamin;

  late DateTime _birthDate;

  @override
  void initState() {
    super.initState();
    _namaTextController.text = "Miracle Culhane";
    _userTextController.text = "miracleculhane1991";
    _emailTextController.text = "culhane.miracle87@gmail.com";
    _hpTextController.text = "08177897652";
    _jenisKelamin = JenisKelamin.perempuan;
    _birthDate = DateTime(1991, 7, 12);
  }

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
          "Ubah Profil",
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
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  height: 130.h,
                  width: 320.w,
                  child: UnconstrainedBox(
                    child: Container(
                      width: 90.sp,
                      height: 90.sp,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        image: const DecorationImage(
                            image: CachedNetworkImageProvider(
                              "https://placeimg.com/50/50/people",
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: UnconstrainedBox(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 78.w,
                            height: 23.w,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                            ),
                            child: Center(
                              child: Text(
                                "Ubah",
                                style: textTheme.titleLarge!.copyWith(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 3.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 13.h),
                  width: 320.w,
                  child: Text(
                    "Info Akun",
                    style: textTheme.titleLarge,
                  ),
                ),
                Divider(
                  thickness: 1.h,
                ),
                SizedBox(
                  width: 320.w,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 90.w,
                        leading: Text(
                          "Nama",
                          style: textTheme.bodyMedium!
                              .copyWith(color: Colors.grey),
                        ),
                        title: UbahProfilTextField(
                          controller: _namaTextController,
                          hintText: "Masukkan Nama",
                        ),
                        trailing: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 90.w,
                        leading: Text(
                          "Username",
                          style: textTheme.bodyMedium!
                              .copyWith(color: Colors.grey),
                        ),
                        title: UbahProfilTextField(
                          controller: _userTextController,
                          hintText: "Masukkan Username",
                        ),
                        trailing: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 90.w,
                        leading: Text(
                          "Email",
                          style: textTheme.bodyMedium!
                              .copyWith(color: Colors.grey),
                        ),
                        title: UbahProfilTextField(
                          controller: _emailTextController,
                          hintText: "Masukkan Email",
                        ),
                        trailing: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 90.w,
                        leading: Text(
                          "No. HP",
                          style: textTheme.bodyMedium!
                              .copyWith(color: Colors.grey),
                        ),
                        title: UbahProfilTextField(
                          controller: _hpTextController,
                          hintText: "Masukkan No. HP",
                        ),
                        trailing: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showJenisKelaminMenu(context: context).then((value) {
                            setState(() {
                              if (value != null) {
                                _jenisKelamin = value;
                              }
                            });
                          });
                        },
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 90.w,
                          leading: Text(
                            "Jenis Kelamin",
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          title: Text(
                            _jenisKelamin == JenisKelamin.laki
                                ? "Laki-laki"
                                : "Perempuan",
                            style: textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: _birthDate,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100))
                              .then((value) {
                            if (mounted) {
                              if (value != null) {
                                setState(() {
                                  _birthDate = value;
                                });
                              }
                            }
                          });
                        },
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 90.w,
                          leading: Text(
                            "Tanggal Lahir",
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          title: Text(
                            _dateFormat.format(_birthDate),
                            style: textTheme.bodyMedium,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
