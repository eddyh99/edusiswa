import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ulife/views/signup_view.dart';
import 'package:ulife/views/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
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
    return ScreenUtilInit(
      designSize: const Size(720, 1280),
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
            primarySwatch: Colors.indigo,
            appBarTheme: AppBarTheme(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor),
            textTheme: TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 48.sp), //Judul besar, judul utama, semi bold, 24
              headline2: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40.sp), //Judul besar, menu halaman, semi bold, 20
              headline3: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32.sp), //Judul 2, pilihan kategori, 16
              subtitle1: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 28.sp), //Judul sub menu, reguler, 14
              subtitle2: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28.sp), //Judul sub menu, medium, 14
              bodyText1: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24.sp), //Teks paragraf, reguler, 12
              bodyText2: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp), //Teks paragraf, medium, 12
              caption: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 32.sp), //Untuk nama pengguna, medium, 16
            ).apply(
              displayColor: Colors.black,
              bodyColor: Colors.black,
              decorationColor: Colors.grey,
            ),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: Colors.indigo,
              selectionColor: Colors.indigo.shade200,
              selectionHandleColor: Colors.indigo,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                elevation: 1.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              isDense: true,
              errorStyle: const TextStyle(fontSize: 0.01),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.grey.shade300),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.indigo,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.red,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
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
            primarySwatch: Colors.indigo,
            appBarTheme: AppBarTheme(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor),
            textTheme: TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 48.sp), //Judul besar, judul utama, semi bold, 24
              headline2: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40.sp), //Judul besar, menu halaman, semi bold, 20
              headline3: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32.sp), //Judul 2, pilihan kategori, 16
              subtitle1: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 28.sp), //Judul sub menu, reguler, 14
              subtitle2: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28.sp), //Judul sub menu, medium, 14
              bodyText1: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24.sp), //Teks paragraf, reguler, 12
              bodyText2: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp), //Teks paragraf, medium, 12
              caption: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 32.sp), //Untuk nama pengguna, medium, 16
            ).apply(
              displayColor: Colors.white,
              bodyColor: Colors.white,
              decorationColor: Colors.grey,
            ),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: Colors.indigo,
              selectionColor: Colors.indigo.shade200,
              selectionHandleColor: Colors.indigo,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                elevation: 1.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              isDense: true,
              errorStyle: const TextStyle(fontSize: 0.01),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.grey.shade700),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.grey.shade700,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.indigo,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.red,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
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
            ),
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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offNamed("/register");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
