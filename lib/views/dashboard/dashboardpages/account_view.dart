import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() {
    return _AccountViewState();
  }
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 20.w,
        title: Text(
          "Akun",
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
                  margin: EdgeInsets.fromLTRB(0.0, 35.h, 0.0, 25.h),
                  width: 1.sw,
                  child: Column(
                    children: [
                      //User tile
                      ListTile(
                        isThreeLine: true,
                        leading: CircleAvatar(
                          radius: 30.r,
                          backgroundImage: const CachedNetworkImageProvider(
                            "https://placeimg.com/50/50/people",
                          ),
                        ),
                        title: Text(
                          "Miracle Culhane",
                          style: textTheme.titleLarge,
                        ),
                        subtitle: Wrap(
                          direction: Axis.vertical,
                          children: [
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
                        trailing: IconButton(
                          splashRadius: 25.r,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Get.toNamed("/dashboard/account/ubah-profil");
                          },
                          icon: Icon(
                            LineIcons.userEdit,
                            color: Theme.of(context).primaryColor,
                            size: 32.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      //Account card
                      Container(
                        width: 320.w,
                        height: 150.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 17.w, vertical: 14.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/akun-card-bg.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      "Total Saldo",
                                      style: textTheme.bodyMedium!
                                          .copyWith(color: Colors.white),
                                    ),
                                    Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                          text: "999.999.999",
                                          style: textTheme.titleLarge!
                                              .copyWith(color: Colors.white),
                                        ),
                                        TextSpan(
                                          text: " Points",
                                          style: textTheme.bodyMedium!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ]),
                                    )
                                  ],
                                ),
                                Text(
                                  "UPoint",
                                  style: textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.vertical,
                                    children: [
                                      Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.white,
                                        size: 28.sp,
                                      ),
                                      Text(
                                        "Top Up",
                                        style: textTheme.bodySmall!.copyWith(
                                            color: Colors.white,
                                            fontSize: 10.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.vertical,
                                    children: [
                                      Icon(
                                        Icons.save_alt_outlined,
                                        color: Colors.white,
                                        size: 28.sp,
                                      ),
                                      Text(
                                        "Withdraw",
                                        style: textTheme.bodySmall!.copyWith(
                                            color: Colors.white,
                                            fontSize: 10.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.vertical,
                                    children: [
                                      Icon(
                                        Icons.feed_outlined,
                                        color: Colors.white,
                                        size: 28.sp,
                                      ),
                                      Text(
                                        "Riwayat",
                                        style: textTheme.bodySmall!.copyWith(
                                            color: Colors.white,
                                            fontSize: 10.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 3.h,
                ),
                //Member section
                Container(
                  width: 320.w,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Member",
                        style: textTheme.titleLarge,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 0.0,
                          leading: const Icon(LineIcons.addressCard),
                          title: Text(
                            "Membership",
                            style: textTheme.titleSmall,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 0.0,
                          leading: const Icon(LineIcons.userFriends),
                          title: Text(
                            "Referral",
                            style: textTheme.titleSmall,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 0.0,
                          leading: const Icon(LineIcons.link),
                          title: Text(
                            "Kode Saya",
                            style: textTheme.titleSmall,
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
                Divider(
                  thickness: 3.h,
                ),
                //Akun section
                Container(
                  width: 320.w,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Akun",
                        style: textTheme.titleLarge,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/dashboard/account/ubah-profil");
                        },
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 0.0,
                          leading: const Icon(LineIcons.user),
                          title: Text(
                            "Ubah Profil",
                            style: textTheme.titleSmall,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/dashboard/account/ubah-password/lama");
                        },
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 0.0,
                          leading: const Icon(LineIcons.lock),
                          title: Text(
                            "Ubah Password",
                            style: textTheme.titleSmall,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 0.0,
                          leading: const Icon(LineIcons.creditCard),
                          title: Text(
                            "Pembayaran",
                            style: textTheme.titleSmall,
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
                Divider(
                  thickness: 3.h,
                ),
                //tentang section
                Container(
                  width: 320.w,
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tentang",
                        style: textTheme.titleLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Panduan",
                            style: textTheme.titleSmall!.copyWith(height: 4.h),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Syarat & Ketentuan",
                            style: textTheme.titleSmall!.copyWith(height: 4.h),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Kebijakan",
                            style: textTheme.titleSmall!.copyWith(height: 4.h),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Pusat Bantuan",
                            style: textTheme.titleSmall!.copyWith(height: 4.h),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 10.h, 0.0, 40.h),
                  child: SizedBox(
                    width: 320.w,
                    height: 35.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed("/");
                      },
                      child: Text(
                        "Keluar",
                        style:
                            textTheme.titleLarge!.copyWith(color: Colors.white),
                      ),
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
