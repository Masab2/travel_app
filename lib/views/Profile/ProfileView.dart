import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/config/widgets/widgets.dart';
import 'package:travel_app/services/SessionManager/sessaion_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          0.02.ph(context),
          Align(
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
          ),
          0.02.ph(context),
          const ProfileWidgetListTile(
            icon: IconlyBold.profile,
            title: "title",
            subtitle: "subtitle",
          ),
          InkWell(
            onTap: () async {
              SessionController().logout().then((value) {
                if (SessionController().isLogin == false) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RoutesNames.loginScreen, (route) => false);
                }
              });
            },
            child: const ProfileWidgetListTile(
              icon: IconlyBold.profile,
              title: "title",
              subtitle: "subtitle",
            ),
          ),
        ],
      ),
    );
  }
}
