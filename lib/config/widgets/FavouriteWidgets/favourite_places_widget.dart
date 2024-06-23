import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
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
          crossAxisSpacing: 2,
          mainAxisSpacing: 5,
          childAspectRatio: 2 / 2.4,
        ),
        itemBuilder: (context, index) {
          return Expanded(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: CachedNetworkImage(
                      height: context.mw * 0.45,
                      width: context.mw * 0.45,
                      imageUrl: AppUrl.buildUrlImage(data[index].image),
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    ),
                    Positioned(
                      top: context.mh * 0.01,
                      left: context.mw * 0.35,
                      right: 0,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          IconlyBold.heart,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    )
                  ],
                ),
                0.01.ph(context),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        0.07.pw(context),
                        Expanded(
                          child: Text(
                            data[index].title,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
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
                        Expanded(
                          child: Text(
                            data[index].country,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
