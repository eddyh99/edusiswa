import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulife/widgets/paket_rating_widget.dart';
import 'package:ulife/widgets/rating_chip_widget.dart';

class ReviewTabView extends StatefulWidget {
  const ReviewTabView({super.key});

  @override
  State<ReviewTabView> createState() {
    return _ReviewTabViewState();
  }
}

class _ReviewTabViewState extends State<ReviewTabView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: 320.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    PaketRating(
                      ratingCount: "4.9",
                      counterStyle: textTheme.titleLarge,
                      iconSize: 18.sp,
                    ),
                    Text(
                      // ignore: prefer_adjacent_string_concatenation
                      " " + "(4823 Review)",
                      style: textTheme.titleLarge,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Lihat Semua",
                    style: textTheme.titleLarge!.copyWith(color: Colors.indigo),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          SizedBox(
            height: 25.h,
            width: 31.sw,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              scrollDirection: Axis.horizontal,
              children: [
                const RatingChip(
                  textRating: "Semua",
                  isOutlined: false,
                ),
                SizedBox(
                  width: 10.w,
                ),
                const RatingChip(
                  textRating: "5",
                ),
                SizedBox(
                  width: 10.w,
                ),
                const RatingChip(
                  textRating: "4",
                ),
                SizedBox(
                  width: 10.w,
                ),
                const RatingChip(
                  textRating: "3",
                ),
                SizedBox(
                  width: 10.w,
                ),
                const RatingChip(
                  textRating: "2",
                ),
                SizedBox(
                  width: 10.w,
                ),
                const RatingChip(
                  textRating: "1",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          SizedBox(
            width: 320.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                  leading: CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      "https://placeimg.com/50/50/people",
                      maxHeight: 35.h.toInt(),
                      maxWidth: 35.w.toInt(),
                    ),
                  ),
                  title: Text(
                    "Ryan Baptista",
                    style: textTheme.titleLarge,
                  ),
                  subtitle: Wrap(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18.sp,
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    splashRadius: 20.r,
                    icon: const Icon(Icons.more_vert),
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie urna egestas rhoncus.",
                  style: textTheme.bodySmall,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Wrap(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.indigo,
                            size: 18.sp,
                          ),
                          Text(
                            // ignore: prefer_adjacent_string_concatenation
                            " " + "123",
                            style: textTheme.bodySmall!
                                .copyWith(color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "1 Hari lalu",
                      style: textTheme.bodySmall!.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
