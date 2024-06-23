import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class ProfileWidgetmainIcon extends StatelessWidget {
  final String email;
  const ProfileWidgetmainIcon({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: context.mh * 0.18,
            width: context.mh * 0.18,
            padding: EdgeInsets.all(context.mh * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AppColor.blackColor, width: 2.0),
            ),
            child: Icon(
              IconlyLight.camera,
              color: AppColor.primaryColor,
            ),
          ),
        ),
        0.02.ph(context),
        Text(email,
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
