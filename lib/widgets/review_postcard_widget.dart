import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewPostCard extends StatelessWidget {
  const ReviewPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              style: Theme.of(context).textTheme.titleLarge,
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
            style: Theme.of(context).textTheme.bodySmall,
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
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
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
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
