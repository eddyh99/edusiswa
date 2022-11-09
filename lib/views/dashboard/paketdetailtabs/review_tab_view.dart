import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulife/widgets/card_usersreview_widget.dart';
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
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "(4823 Review)",
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
                RatingChip(
                  textRating: "Semua",
                  isOutlined: false,
                  onTap: () {},
                ),
                SizedBox(
                  width: 10.w,
                ),
                RatingChip(
                  textRating: "5",
                  onTap: () {},
                ),
                SizedBox(
                  width: 10.w,
                ),
                RatingChip(
                  textRating: "4",
                  onTap: () {},
                ),
                SizedBox(
                  width: 10.w,
                ),
                RatingChip(
                  textRating: "3",
                  onTap: () {},
                ),
                SizedBox(
                  width: 10.w,
                ),
                RatingChip(
                  textRating: "2",
                  onTap: () {},
                ),
                SizedBox(
                  width: 10.w,
                ),
                RatingChip(
                  textRating: "1",
                  onTap: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 1.sw,
              child: ListView(
                children: [
                  CardUsersReview(
                    width: 320.w,
                    avatarImage: CachedNetworkImageProvider(
                      "https://placeimg.com/70/70/people",
                      maxHeight: 35.h.toInt(),
                      maxWidth: 35.w.toInt(),
                    ),
                    textName: "Bryan Fury",
                    ratingCount: 3.5,
                    headerTrailing: IconButton(
                      onPressed: () {},
                      splashRadius: 20.r,
                      icon: const Icon(Icons.more_vert),
                    ),
                    textReview:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie urna egestas rhoncus.",
                    isLiked: true,
                    onLike: () {},
                    likeCount: "212",
                    textDate: "1 hari lalu",
                  ),
                  Divider(
                    thickness: 2.h,
                  ),
                  CardUsersReview(
                    width: 320.w,
                    avatarImage: CachedNetworkImageProvider(
                      "https://placeimg.com/40/40/people",
                      maxHeight: 35.h.toInt(),
                      maxWidth: 35.w.toInt(),
                    ),
                    textName: "Simon Solomon",
                    ratingCount: 5,
                    headerTrailing: IconButton(
                      onPressed: () {},
                      splashRadius: 20.r,
                      icon: const Icon(Icons.more_vert),
                    ),
                    textReview: "Very good learning",
                    isLiked: false,
                    onLike: () {},
                    likeCount: "43",
                    textDate: "2 hari lalu",
                  ),
                  Divider(
                    thickness: 2.h,
                  ),
                  CardUsersReview(
                    width: 320.w,
                    avatarImage: CachedNetworkImageProvider(
                      "https://placeimg.com/60/60/people",
                      maxHeight: 35.h.toInt(),
                      maxWidth: 35.w.toInt(),
                    ),
                    textName: "Jhon Pantau",
                    ratingCount: 5,
                    headerTrailing: IconButton(
                      onPressed: () {},
                      splashRadius: 20.r,
                      icon: const Icon(Icons.more_vert),
                    ),
                    textReview:
                        "Cheap price, thankk you \n\u{1F920}\u{1F920}\u{1F920}",
                    isLiked: true,
                    onLike: () {},
                    likeCount: "143",
                    textDate: "3 hari lalu",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
