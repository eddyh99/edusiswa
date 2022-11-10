import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UbahProfilView extends StatefulWidget {
  const UbahProfilView({super.key});

  @override
  State<UbahProfilView> createState() {
    return _UbahProfilViewState();
  }
}

class _UbahProfilViewState extends State<UbahProfilView> {
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
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 100.w,
                          leading: Text(
                            "Nama",
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          title: Text(
                            "Miracle Culhane",
                            style: textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 100.w,
                          leading: Text(
                            "Username",
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          title: Text(
                            "miracleculhane1991",
                            style: textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 100.w,
                          leading: Text(
                            "Email",
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          title: Text(
                            "culhane.miracle87@gmail.com",
                            style: textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 100.w,
                          leading: Text(
                            "No. HP",
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          title: Text(
                            "081234667891",
                            style: textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 100.w,
                          leading: Text(
                            "Jenis Kelamin",
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          title: Text(
                            "Perempuan",
                            style: textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 100.w,
                          leading: Text(
                            "Tanggal Lahir",
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.grey),
                          ),
                          title: Text(
                            "12 Juli 1991",
                            style: textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: Colors.indigo,
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
