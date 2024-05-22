import 'package:flutter/material.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        0.04.pw(context),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Discover the wonders of the ',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextSpan(
                  text: ' world!',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColor.primaryColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
