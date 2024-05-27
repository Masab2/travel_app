import 'package:flutter/material.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class TravelTitleWidget extends StatelessWidget {
  final PlacesDataList model;
  const TravelTitleWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                 model.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                model.city,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColor.greyTextColor,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
