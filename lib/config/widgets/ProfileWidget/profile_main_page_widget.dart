
import 'package:flutter/material.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class ProfileMainPageWidgetListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? ontap;

  const ProfileMainPageWidgetListTile({
    super.key,
    required this.icon,
    required this.title,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: context.mw * 0.03, vertical: context.mh * 0.01),
      child: ListTile(
        onTap: ontap,
        leading: Icon(
          icon,
          size: context.mh * 0.030,
          color: AppColor.greyTextColor,
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
