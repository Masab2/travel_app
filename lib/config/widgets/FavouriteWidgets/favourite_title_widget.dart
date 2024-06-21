import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';

class FavouriteTitleWidget extends StatelessWidget {
  const FavouriteTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        0.02.pw(context),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
            child: Text(
              "Favourite Places",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: context.mh * 0.020,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
