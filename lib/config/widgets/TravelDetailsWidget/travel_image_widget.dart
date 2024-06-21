import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/FavouriteBloc/AddToFavBloc/add_to_fav_bloc.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/utils.dart';

class TravelImageWidget extends StatelessWidget {
  final PlacesDataList model;
  const TravelImageWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
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
        ),
        Positioned(
          top: context.mh * 0.04,
          left: context.mw * 0.04,
          right: context.mw * 0.04,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  IconlyLight.arrow_left,
                  color: AppColor.greyTextColor,
                ),
              ),
              BlocListener<AddToFavBloc, AddToFavState>(
                listener: (context, state) {
                  if (state is AddToFavSuccess) {
                    Utils.displaySnackBarSuccess(
                      context,
                      state.addToFavModel.message ?? "",
                    );
                  }
                  if (state is AddToFavError) {
                    Utils.displaySnackBarError(
                      context,
                      state.error,
                    );
                  }
                },
                child: BlocBuilder<AddToFavBloc, AddToFavState>(
                  builder: (context, state) {
                    return IconButton(
                      onPressed: () {
                        context.read<AddToFavBloc>().add(
                              AddToFavEventBtn(placeId: model.id),
                            );
                      },
                      icon: state is AddToFavSuccess
                          ? const Icon(IconlyBold.bookmark)
                          : const Icon(
                              IconlyLight.bookmark,
                            ),
                      color: AppColor.greyTextColor,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
