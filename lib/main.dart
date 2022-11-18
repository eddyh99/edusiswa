import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ulife/controllers/lokasi_controller.dart';
import 'package:ulife/controllers/outlet_controller.dart';
import 'package:ulife/views/dashboard/edukasi_detail_view.dart';
import 'package:ulife/views/dashboard/edukios/account_view.dart';
import 'package:ulife/views/dashboard/edukios/konsultasi_view.dart';
import 'package:ulife/views/dashboard/edukios/konsultasi_offline_view.dart';
import 'package:ulife/views/dashboard/edukios/main.dart';
import 'package:ulife/views/dashboard/edukios/profil_tutor_view.dart';
import 'package:ulife/views/dashboard/keranjang_view.dart';
import 'package:ulife/views/dashboard/main.dart';
import 'package:ulife/views/dashboard/metode_pembayaran_view.dart';
import 'package:ulife/views/dashboard/paket_detail_view.dart';
import 'package:ulife/views/dashboard/paket_kategori_view.dart';
import 'package:ulife/views/dashboard/pembayaran_detail_view.dart';
import 'package:ulife/views/login_view.dart';
import 'package:ulife/views/signup_view.dart';
import 'package:ulife/views/splashscreen.dart';

import 'views/dashboard/dashboardpages/accountsubviews/ubah_passwordbaru_view.dart';
import 'views/dashboard/dashboardpages/accountsubviews/ubah_passwordlama_view.dart';
import 'views/dashboard/dashboardpages/accountsubviews/ubah_profil_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const UlifeApp());
}

class NoGlowScrollBehavior extends MaterialScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class UlifeApp extends StatelessWidget {
  const UlifeApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor themeColor = Colors.indigo;
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: "Ulife",
          themeMode: ThemeMode.light,
          scrollBehavior: NoGlowScrollBehavior(),
          theme: ThemeData(
            fontFamily: "Poppins",
            brightness: Brightness.light,
            primarySwatch: themeColor,
            appBarTheme: AppBarTheme(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor),
            textTheme: TextTheme(
              displayLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp), //Judul besar, judul utama, semi bold, 24
              displayMedium: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp), //Judul besar, menu halaman, semi bold, 20
              displaySmall: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp), //Judul 2, pilihan kategori, semi bold, 16
              headlineLarge: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp), //Judul besar, judul utama, medium, 24
              headlineMedium: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp), //Judul besar, menu halaman, medium, 20
              headlineSmall: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp), //Judul 2, pilihan kategori, medium, 16
              titleLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp), //Judul sub menu, semi bold, 14
              titleMedium: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp), //Judul sub menu, medium, 14
              titleSmall: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp), //Judul sub menu, reguler, 14
              bodyLarge: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp), //Untuk nama pengguna, medium, 16,
              bodyMedium: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp), //Teks paragraf, medium, 12
              bodySmall: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp), //Teks paragraf, reguler, 12
            ).apply(
              displayColor: Colors.black,
              bodyColor: Colors.black,
              decorationColor: Colors.grey,
            ),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: themeColor,
              selectionColor: themeColor.shade200,
              selectionHandleColor: themeColor,
            ),
            checkboxTheme: CheckboxThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(3.r)),
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                ),
                backgroundColor: themeColor,
                foregroundColor: Colors.white,
                disabledBackgroundColor: themeColor.shade200,
                disabledForegroundColor: Colors.white,
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.w,
                  color: themeColor,
                ),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              isDense: true,
              errorStyle: const TextStyle(fontSize: 0.01),
              constraints: BoxConstraints(
                maxHeight: 40.h,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 11.w, vertical: 13.h),
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade300),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  width: 1.5,
                  color: themeColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.red,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ),
          darkTheme: ThemeData(
            fontFamily: "Poppins",
            brightness: Brightness.dark,
            primarySwatch: themeColor,
            appBarTheme: AppBarTheme(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor),
            textTheme: TextTheme(
              displayLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp), //Judul besar, judul utama, semi bold, 24
              displayMedium: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp), //Judul besar, menu halaman, semi bold, 20
              displaySmall: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp), //Judul 2, pilihan kategori, semi bold, 16
              headlineLarge: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp), //Judul besar, judul utama, medium, 24
              headlineMedium: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp), //Judul besar, menu halaman, medium, 20
              headlineSmall: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp), //Judul 2, pilihan kategori, medium, 16
              titleLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp), //Judul sub menu, semi bold, 14
              titleMedium: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp), //Judul sub menu, medium, 14
              titleSmall: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp), //Judul sub menu, reguler, 14
              bodyLarge: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp), //Untuk nama pengguna, medium, 16,
              bodyMedium: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp), //Teks paragraf, medium, 12
              bodySmall: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp), //Teks paragraf, reguler, 12
            ).apply(
              displayColor: Colors.black,
              bodyColor: Colors.black,
              decorationColor: Colors.grey,
            ),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: themeColor,
              selectionColor: themeColor.shade200,
              selectionHandleColor: themeColor,
            ),
            checkboxTheme: CheckboxThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(3.r)),
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                ),
                backgroundColor: themeColor,
                foregroundColor: Colors.white,
                disabledBackgroundColor: themeColor.shade800,
                disabledForegroundColor: Colors.white,
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.w,
                  color: themeColor,
                ),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              isDense: true,
              errorStyle: const TextStyle(fontSize: 0.01),
              constraints: BoxConstraints(
                maxHeight: 40.h,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 11.w, vertical: 13.h),
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade700),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.grey.shade700,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  width: 1.5,
                  color: themeColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.red,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ),
          initialRoute: '/',
          smartManagement: SmartManagement.full,
          getPages: [
            GetPage(
              name: '/',
              page: () => const AppMain(),
            ),
            GetPage(
              name: '/signup',
              page: () => const SignUpView(),
              transition: Transition.downToUp,
            ),
            GetPage(
                name: '/login',
                page: () => const LoginView(),
                transition: Transition.downToUp),
            GetPage(
              name: '/dashboard/',
              page: () => const DashboardMain(),
              transition: Transition.zoom,
            ),
            /* Akun sub views [start] */
            GetPage(
              name: '/dashboard/account/ubah-profil',
              page: () => const UbahProfilView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/account/ubah-password/lama',
              page: () => const UbahPasswordLamaView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/account/ubah-password/baru',
              page: () => const UbahPasswordBaruView(),
              transition: Transition.rightToLeft,
            ),
            /* Akun sub views [end] */
            GetPage(
              name: '/dashboard/keranjang',
              page: () => const KeranjangView(),
              transition: Transition.upToDown,
            ),
            GetPage(
              name: '/dashboard/detail-pembayaran',
              page: () => const PembayaranDetailView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/metode-pembayaran',
              page: () => const MetodePembayaranView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/paket-kategori',
              page: () => const PaketKategoriView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/edukasi-detail',
              page: () => const EdukasiDetailView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/paket-detail',
              page: () => const PaketDetailView(),
              transition: Transition.rightToLeft,
            ),
            /* Edukios views [start] */
            GetPage(
              name: '/dashboard/edukios/',
              page: () => const EdukiosMain(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/edukios/account',
              page: () => const EdukiosAccountView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/edukios/konsultasi',
              page: () => const EdukiosKonsultasiView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/edukios/konsultasi/offline',
              page: () => const EdukiosKonsultasiOfflineView(),
              transition: Transition.rightToLeft,
            ),
            GetPage(
              name: '/dashboard/edukios/konsultasi/tutor',
              page: () => const EdukiosProfilTutorView(),
              transition: Transition.rightToLeft,
            ),
            /* Edukios views [end] */
          ],
        );
      },
    );
  }
}

class AppMain extends StatefulWidget {
  const AppMain({super.key});

  @override
  State<AppMain> createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        LokasiController.initialize().then((isInitialized) {
          if (isInitialized) {
            OutletController.initialize();
            Future.delayed(const Duration(seconds: 1), () {
              Get.offNamed("/signup");
            });
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
