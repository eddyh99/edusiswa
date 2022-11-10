import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ulife/utils/extensions.dart';
import 'package:ulife/views/dashboard/dashboardpages/account_view.dart';
import 'package:ulife/views/dashboard/dashboardpages/home_view.dart';
import 'package:ulife/views/dashboard/dashboardpages/liveclass_view.dart';
import 'package:ulife/views/dashboard/dashboardpages/myclass_view.dart';
import 'package:ulife/views/dashboard/dashboardpages/transaction_view.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() {
    return _DashboardMainState();
  }
}

class _DashboardMainState extends State<DashboardMain> {
  final DashboardPages _page = Get.arguments["page"];

  final Map<DashboardPages, Widget> _pageList = const {
    DashboardPages.home: HomeView(),
    DashboardPages.myclass: MyClassView(),
    DashboardPages.liveclass: LiveClassView(),
    DashboardPages.transaction: TransactionView(),
    DashboardPages.account: AccountView(),
  };

  late int _pageIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageIndex =
        _pageList.keys.toList().indexWhere((element) => element == _page);
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          children: _pageList.values.toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (value) {
          _pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 32.sp,
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w300,
            ),
        unselectedFontSize: 9.sp,
        unselectedItemColor: Colors.indigo.shade200,
        showUnselectedLabels: true,
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        selectedFontSize: 9.sp,
        selectedItemColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.bookOpen,
              ),
              label: "Kelas Saya"),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.television,
              ),
              label: "Live Class"),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.fileInvoice,
              ),
              label: "Transaksi"),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.user,
              ),
              label: "Akun"),
        ],
      ),
    );
  }
}
