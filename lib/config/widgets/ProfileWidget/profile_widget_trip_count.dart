import 'package:flutter/material.dart';
import 'package:travel_app/config/Color/AppColor.dart';

class ProfileWidgetTripCount extends StatelessWidget {
  const ProfileWidgetTripCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text("Booked Trips",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
            Text(
              "40",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        VerticalDivider(
          color: AppColor.primaryColor,
          thickness: 1,
        ),
        Column(
          children: [
            Text("Buckets List",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
            Text(
              "40",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
