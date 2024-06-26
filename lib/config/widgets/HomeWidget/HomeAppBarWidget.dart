import 'package:flutter/material.dart';
import 'package:travel_app/config/Assets/imageAsset.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/routes/routesnames.dart';

class HomeAppbar {
  static PreferredSizeWidget homeAppBar(BuildContext context) {
    return AppBar(
      leading: Image(
        height: context.mw * 0.014,
        width: context.mw * 0.014,
        image: AssetImage(ImageAsset.menuIcon),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Explore',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: AppColor.primaryColor),
            ),
            TextSpan(
              text: ' Era',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: AppColor.greyTextColor),
            ),
          ],
        ),
      ),
      centerTitle: true,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RoutesNames.profileScreen);
          },
          child: const Icon(IconlyLight.notification),
        ),
        0.02.pw(context),
      ],
    );
  }
}
