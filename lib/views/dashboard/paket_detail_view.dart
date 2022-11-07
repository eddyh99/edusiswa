import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ulife/widgets/icons_notifbadge_widget.dart';

class PaketDetailView extends StatefulWidget {
  const PaketDetailView({super.key});

  @override
  State<PaketDetailView> createState() {
    return _PaketDetailViewState();
  }
}

class _PaketDetailViewState extends State<PaketDetailView> {
  final String _paketID = Get.arguments["paket"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        top: false,
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 253.h,
                          width: 1.sw,
                          child: Image.asset(
                            "assets/images/paket-header-image.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.0),
                          child: ListTile(
                            leading: GestureDetector(
                              onTap: () {
                                Get.back(closeOverlays: true);
                              },
                              child: Container(
                                height: 30.sp,
                                width: 30.sp,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.r)),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                child: Icon(
                                  Icons.chevron_left,
                                  size: 24.sp,
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconsNotificationBadge(
                                  counter: "12",
                                  counterSize: 9.sp,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      LineIcons.shoppingCart,
                                      size: 32.sp,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12.75.w,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    LineIcons.alternateShare,
                                    size: 32.sp,
                                    color: Colors.indigo,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverAppBar(
                  automaticallyImplyLeading: false,
                )
              ];
            },
            body: const TabBarView(
              children: [
                Center(child: Text("No design yet")),
                Center(child: Text("No design yet")),
                Center(child: Text("No design yet")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
