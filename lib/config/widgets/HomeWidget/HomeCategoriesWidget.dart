import 'package:flutter/material.dart';
import 'package:travel_app/config/Assets/imageAsset.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routesnames.dart';

class HomeCategoriesWidget extends StatelessWidget {
  final List<String>? categoryList = [
    "Beach",
    "Lake",
    "Deasert",
    "Mountain",
    "Forest",
  ];
  final List<String>? categoryIconList = [
    ImageAsset.beach,
    ImageAsset.lake,
    ImageAsset.des,
    ImageAsset.mountains,
    ImageAsset.forrest,
  ];
  HomeCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.mh * 0.10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList?.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                RoutesNames.categoryScreen,
                arguments: categoryList?[index],
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: context.mw * 0.02),
              height: context.mh * 0.15,
              width: context.mw * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    categoryIconList?[index] ?? '',
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      0.02.pw(context),
                      Text(
                        categoryList?[index] ?? '',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColor.secondaryColorWhite,
                              fontWeight: FontWeight.bold,
                            ),
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
