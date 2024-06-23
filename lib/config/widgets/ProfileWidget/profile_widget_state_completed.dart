import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/widgets/ProfileWidget/profile_widget_listTile.dart';

class ProfileWidgetStateCompleted extends StatelessWidget {
  final state;
  const ProfileWidgetStateCompleted({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileWidgetListTile(
          icon: IconlyLight.profile,
          title: "Name",
          subtitle: state.model.data?.name ?? "",
        ),
        ProfileWidgetListTile(
          icon: IconlyLight.message,
          title: "Email",
          subtitle: state.model.data?.email ?? "",
        ),
        ProfileWidgetListTile(
          icon: IconlyLight.call,
          title: "Phone",
          subtitle: state.model.data?.phone ?? "",
        ),
      ],
    );
  }
}
