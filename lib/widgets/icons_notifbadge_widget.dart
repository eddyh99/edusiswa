import 'package:flutter/material.dart';

class IconsNotificationBadge extends StatelessWidget {
  const IconsNotificationBadge({
    super.key,
    required this.child,
    required this.counter,
    this.counterSize = 9,
    this.radius,
  });

  final Widget child;
  final String counter;
  final double counterSize;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        child,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(
              radius == null ? (counterSize * 0.15) : (radius! * 0.15)),
          child: CircleAvatar(
            radius: radius ?? (counterSize * 0.8),
            backgroundColor: Colors.red,
            child: Center(
              child: Text(
                counter,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: counterSize, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
