import 'package:flutter/material.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/config/components/RoundButton/RoundButton.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/config/widgets/widgets.dart';

class TravelDetailsView extends StatefulWidget {
  final PlacesDataList model;
  const TravelDetailsView({super.key, required this.model});

  @override
  State<TravelDetailsView> createState() => _TravelDetailsViewState();
}

class _TravelDetailsViewState extends State<TravelDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TravelImageWidget(model: widget.model),
            0.02.ph(context),
            TravelTitleWidget(model: widget.model),
            0.02.ph(context),
            TravelCountryPriceWidget(model: widget.model),
            0.05.ph(context),
            TravelDescriptionWidget(model: widget.model),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.mw * 0.03, vertical: context.mh * 0.02),
        child: Row(
          children: [
            Expanded(
              child: RoundButton(
                title: 'Book Now',
                onPress: () {
                  Navigator.pushNamed(context, RoutesNames.createbookingScreen);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
