import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

class TileKeranjang extends StatelessWidget {
  const TileKeranjang({
    super.key,
    this.margin = const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
    required this.isChecked,
    required this.onCheckboxChanged,
    this.leading,
    required this.paketTitle,
    required this.paketPrice,
    this.onRemoved,
  });

  final EdgeInsets margin;
  final bool isChecked;
  final Function(bool?)? onCheckboxChanged;
  final Widget? leading;
  final String paketTitle;
  final String paketPrice;
  final VoidCallback? onRemoved;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          Flexible(
            child: Checkbox(
              value: isChecked,
              onChanged: onCheckboxChanged,
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.r),
                    ),
                    child: leading ??
                        Container(
                          height: 75.sp,
                          width: 75.sp,
                          color: Colors.grey,
                        ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        paketTitle,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        paketPrice,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.indigo),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: onRemoved,
                          child: const Icon(LineIcons.alternateTrashAlt),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
