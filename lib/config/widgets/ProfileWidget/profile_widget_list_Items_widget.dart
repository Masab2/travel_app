import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/config/widgets/ProfileWidget/profile_main_page_widget.dart';
import 'package:travel_app/services/SessionManager/sessaion_controller.dart';

class ProfileWidgetListItemsWidget extends StatelessWidget {
  const ProfileWidgetListItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.02),
      child: Column(
        children: [
          const ProfileMainPageWidgetListTile(
            icon: IconlyLight.profile,
            title: "Profile",
          ),
          const ProfileMainPageWidgetListTile(
            icon: IconlyLight.bookmark,
            title: "BookMarks",
          ),
          const ProfileMainPageWidgetListTile(
            icon: IconlyLight.chat,
            title: "AI Assistant",
          ),
          const ProfileMainPageWidgetListTile(
            icon: IconlyLight.setting,
            title: "Settings",
          ),
          ProfileMainPageWidgetListTile(
            ontap: () {
              SessionController().logout().then((value) {
                if (SessionController().isLogin == false) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RoutesNames.loginScreen, (route) => false);
                }
              });
            },
            icon: IconlyLight.logout,
            title: "Logout",
          ),
        ],
      ),
    );
  }
}
