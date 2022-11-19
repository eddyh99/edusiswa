import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../utils/extensions.dart';
import '../../views/dashboard/dashboardpages/account_view.dart';
import '../../views/dashboard/dashboardpages/home_view.dart';
import '../../views/dashboard/dashboardpages/liveclass_view.dart';
import '../../views/dashboard/dashboardpages/myclass_view.dart';
import '../../views/dashboard/dashboardpages/transaction_view.dart';
import '../../widgets/keepalivepage_widget.dart';

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
    DashboardPages.home: KeepAlivePage(child: HomeView()),
    DashboardPages.myclass: KeepAlivePage(child: MyClassView()),
    DashboardPages.liveclass: KeepAlivePage(child: LiveClassView()),
    DashboardPages.transaction: KeepAlivePage(child: TransactionView()),
    DashboardPages.account: KeepAlivePage(child: AccountView()),
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
        unselectedItemColor: Theme.of(context).primaryColor.withOpacity(0.4),
        showUnselectedLabels: true,
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        selectedFontSize: 9.sp,
        selectedItemColor: Theme.of(context).primaryColor,
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
