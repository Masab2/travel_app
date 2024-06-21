import 'package:flutter/material.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class HomeSubtitleBarWidget extends StatelessWidget {
  final String title;
  final String view;
  const HomeSubtitleBarWidget(
      {super.key, required this.title, required this.view});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: context.mh * 0.017,
                ),
          ),
          Text(
            view,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
