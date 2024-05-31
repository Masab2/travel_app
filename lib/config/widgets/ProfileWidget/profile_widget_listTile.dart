import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';

class ProfileWidgetListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const ProfileWidgetListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        size: context.mh * 0.035,
        icon,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
