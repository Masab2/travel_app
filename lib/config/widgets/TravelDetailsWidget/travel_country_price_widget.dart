import 'package:flutter/material.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class TravelCountryPriceWidget extends StatelessWidget {
  final PlacesDataList model;
  const TravelCountryPriceWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              0.01.pw(context),
              Icon(
                Icons.location_on_outlined,
                color: AppColor.primaryColor,
                size: 20,
              ),
              0.01.pw(context),
              Text(
                model.country,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$${model.pricePerPerson}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: '/Per Person',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColor.greyTextColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
