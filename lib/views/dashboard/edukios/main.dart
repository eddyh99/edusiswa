import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EdukiosMain extends StatefulWidget {
  const EdukiosMain({super.key});

  @override
  State<EdukiosMain> createState() {
    return _EdukiosMainState();
  }
}

class _EdukiosMainState extends State<EdukiosMain> {
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
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20.r,
            icon: Icon(
              Icons.menu,
              size: 24.sp,
              color: Colors.indigo,
            ),
          ),
        ],
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
                  width: 320.w,
                  margin: EdgeInsets.only(top: 25.h, bottom: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            "Miracle Culhane",
                            style: textTheme.headlineSmall,
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 2.w,
                            children: [
                              Text(
                                "Konsultasi:",
                                style: textTheme.bodySmall!.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "1/1",
                                style: textTheme.bodySmall,
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "Bronze Member",
                        style: textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.indigo,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 5.h,
                ),
                Container(
                  width: 320.w,
                  margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 8.w),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.sp,
                    crossAxisSpacing: 15.sp,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/square-bg-teal.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 70.h,
                              child: Image.asset(
                                "assets/images/konsultasi-illustration.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Text(
                              "Konsultasi",
                              style: textTheme.displayMedium!
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/square-bg-amber.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 70.h,
                              child: Image.asset(
                                "assets/images/ajariteman-illustration.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Text(
                              "Ajari Teman",
                              style: textTheme.displayMedium!
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/square-bg-indigo.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 70.h,
                              child: Image.asset(
                                "assets/images/paket-illustration.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Text(
                              "Paket Edukios",
                              style: textTheme.displayMedium!
                                  .copyWith(color: Colors.white),
                            )
                          ],
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
