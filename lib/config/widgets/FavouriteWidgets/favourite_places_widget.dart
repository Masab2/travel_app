import 'package:flutter/material.dart';
import 'package:travel_app/Model/FavouriteModel/favourite_model.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/config/extenshion.dart';

class FavouritePlacesWidget extends StatelessWidget {
  final List<FavouriteDataList> data;
  const FavouritePlacesWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 5,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  fit: BoxFit.cover,
                  height: context.mw * 0.4,
                  width: context.mw * 0.4,
                  AppUrl.buildUrlImage(data[index].image),
                ),
              ),
              0.01.ph(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      0.07.pw(context),
                      Text(
                        data[index].title,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      0.06.pw(context),
                      Icon(
                        Icons.location_on_outlined,
                        size: context.mh * 0.018,
                      ),
                      0.01.pw(context),
                      Text(
                        data[index].country,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
