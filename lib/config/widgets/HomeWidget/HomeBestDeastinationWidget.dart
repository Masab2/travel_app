import 'package:flutter/material.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/config/extenshion.dart';

class HomeBestDeastinationWidget extends StatelessWidget {
  final state;
  const HomeBestDeastinationWidget({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mh * 0.2,
      width: context.mw,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: state.data.data?.length,
        itemBuilder: (context, index) {
          var placesdata = state.data.data?[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      height: context.mw * 0.9,
                      width: context.mw * 0.7,
                      AppUrl.buildUrlImage(placesdata?.image ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                  0.01.ph(context),
                  Row(
                    children: [
                      0.02.pw(context),
                      Text(
                        placesdata?.title ?? '',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      0.01.pw(context),
                      const Icon(
                        Icons.location_on_outlined,
                      ),
                      0.01.pw(context),
                      Text(
                        placesdata?.country ?? '',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
