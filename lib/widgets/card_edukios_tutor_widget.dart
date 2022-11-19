import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/paket_rating_widget.dart';

class CardEdukiosTutor extends StatelessWidget {
  const CardEdukiosTutor({
    super.key,
    this.avatarImage,
    required this.nama,
    this.ratingCount = "0.0",
    this.description,
    required this.isReady,
    this.location = "Unknown",
    this.discountedPrice,
    required this.price,
    this.onButtonPressed,
  });

  final ImageProvider<Object>? avatarImage;
  final String nama;
  final String ratingCount;
  final String? description;
  final bool isReady;
  final String location;
  final String? discountedPrice;
  final String price;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(15, 72, 128, 128),
            blurRadius: 40.sp,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Container(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.fromLTRB(10.w, 0.0, 10.w, 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                isThreeLine: true,
                leading: CircleAvatar(
                  radius: 30.r,
                  backgroundImage: avatarImage,
                ),
                title: Text(
                  nama,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                subtitle: Wrap(
                  direction: Axis.vertical,
                  children: [
                    PaketRating(
                      ratingCount: ratingCount,
                      counterStyle: const TextStyle(color: Colors.black),
                    ),
                    Text(
                      description ?? "",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                trailing: Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 2.w,
                  children: [
                    Icon(
                      Icons.circle_rounded,
                      size: 12.sp,
                      color: isReady ? Colors.green : Colors.grey,
                    ),
                    Text(
                      isReady ? "Ready" : "Not Ready",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: isReady ? Colors.green : Colors.grey),
                    )
                  ],
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 2.w,
                children: [
                  SizedBox(
                    height: 22.h,
                    child: Image.asset(
                      "assets/images/logo-edukios.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Text(
                    location,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                  )
                ],
              ),
              Divider(
                thickness: 1.h,
              ),
              SizedBox(
                height: 35.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          direction: Axis.vertical,
                          children: [
                            discountedPrice != null
                                ? Text(
                                    discountedPrice!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: Colors.grey,
                                          height: 1.2.h,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                  )
                                : const SizedBox.shrink(),
                            Text(
                              price,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Theme.of(context).primaryColor,
                                    height: 1.2.h,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 170.w,
                      child: ElevatedButton(
                        onPressed: onButtonPressed,
                        child: Text(
                          "Konsultasi",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
