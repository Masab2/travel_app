import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class ProfileWidgetmainIcon extends StatelessWidget {
  const ProfileWidgetmainIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.all(context.mh * 0.02),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColor.primaryColor, width: 2.0),
        ),
        child: Icon(
          IconlyBold.profile,
          color: AppColor.primaryColor,
          size: context.mh * 0.130,
        ),
      ),
    );
  }
}
