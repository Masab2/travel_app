import 'package:flutter/material.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/config/extenshion.dart';

class TravelDescriptionWidget extends StatelessWidget {
  final PlacesDataList model;
  const TravelDescriptionWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "About Destination",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
          child: Text(
            model.description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        0.02.ph(context),
      ],
    );
  }
}
