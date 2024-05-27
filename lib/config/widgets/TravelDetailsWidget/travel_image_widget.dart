import 'package:flutter/material.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/config/extenshion.dart';

class TravelImageWidget extends StatelessWidget {
  final PlacesDataList model;
  const TravelImageWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Image(
        fit: BoxFit.cover,
        width: double.infinity,
        height: context.mh * 0.5,
        image: NetworkImage(
          AppUrl.buildUrlImage(model.image),
        ),
      ),
    );
  }
}
