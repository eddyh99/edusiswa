import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MateriPlayerCard extends StatelessWidget {
  const MateriPlayerCard({
    super.key,
    this.width,
    this.leading,
    this.title,
    this.subtitle,
    this.onPlay,
  });

  final double? width;
  final Widget? leading;
  final String? title;
  final String? subtitle;
  final VoidCallback? onPlay;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: Card(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.indigo.shade100
            : Colors.indigo.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.sp),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.indigo,
              child: leading,
            ),
            title: Text(
              title ?? "",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              subtitle ?? "",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: OutlinedButton(
              onPressed: onPlay,
              style: OutlinedButton.styleFrom(
                shape: const CircleBorder(),
              ),
              child: CircleAvatar(
                radius: 25.r,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.indigo,
                  size: 32.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
