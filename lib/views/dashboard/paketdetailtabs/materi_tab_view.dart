import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/materiplayer_card_widget.dart';

class MateriTabView extends StatefulWidget {
  const MateriTabView({super.key});

  @override
  State<MateriTabView> createState() {
    return _MateriTabViewState();
  }
}

class _MateriTabViewState extends State<MateriTabView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 320.w,
              child: Text(
                "Sesi 1: Pengenalan",
                style: textTheme.displaySmall,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            MateriPlayerCard(
              width: 320.w,
              leading: Text(
                "1",
                style: textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              title: "Penegenalan Huruf",
              subtitle: "3 Menit",
              onPlay: () {},
            ),
            SizedBox(
              height: 6.h,
            ),
            MateriPlayerCard(
              width: 320.w,
              leading: Text(
                "2",
                style: textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              title: "Penegenalan Huruf dan Angka",
              subtitle: "3 Menit",
              onPlay: () {},
            ),
            SizedBox(
              height: 18.h,
            ),
            SizedBox(
              width: 320.w,
              child: Text(
                "Sesi 2: Pengenalan",
                style: textTheme.displaySmall,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            MateriPlayerCard(
              width: 320.w,
              leading: Text(
                "1",
                style: textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              title: "Penegenalan Huruf",
              subtitle: "3 Menit",
              onPlay: () {},
            ),
            SizedBox(
              height: 6.h,
            ),
            MateriPlayerCard(
              width: 320.w,
              leading: Text(
                "2",
                style: textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              title: "Penegenalan Huruf dan Angka",
              subtitle: "3 Menit",
              onPlay: () {},
            ),
          ],
        ),
      ),
    );
  }
}
