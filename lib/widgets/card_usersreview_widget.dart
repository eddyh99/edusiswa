import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulife/utils/functions.dart';

class CardUsersReview extends StatelessWidget {
  const CardUsersReview({
    super.key,
    this.width,
    this.height,
    this.avatarImage,
    required this.textName,
    this.ratingCount,
    this.headerTrailing,
    required this.textReview,
    required this.isLiked,
    this.onLike,
    this.likeCount,
    this.textDate,
  });

  final double? width;
  final double? height;
  final ImageProvider<Object>? avatarImage;
  final String textName;
  final double? ratingCount;
  final Widget? headerTrailing;
  final String textReview;
  final bool isLiked;
  final VoidCallback? onLike;
  final String? likeCount;
  final String? textDate;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox(
        width: width ?? double.infinity,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
              leading: CircleAvatar(
                backgroundImage: avatarImage,
              ),
              title: Text(
                textName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: RatingBar(
                initialRating: ratingCount ?? 0.0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 20.sp,
                itemCount: 5,
                ratingWidget: RatingWidget(
                  full: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  half: const Icon(
                    Icons.star_half_outlined,
                    color: Colors.amber,
                  ),
                  empty: const Icon(
                    Icons.star_outline,
                    color: Colors.grey,
                  ),
                ),
                itemPadding: EdgeInsets.only(right: 1.w),
                ignoreGestures: true,
                onRatingUpdate: (rating) {
                  printDebug(rating);
                },
              ),
              trailing: headerTrailing,
            ),
            Text(
              textReview,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: onLike,
                  child: Wrap(
                    children: [
                      Icon(
                        isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                        color: isLiked
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        size: 18.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        likeCount ?? "0",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: isLiked
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  textDate ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
