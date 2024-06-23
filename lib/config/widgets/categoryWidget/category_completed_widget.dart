import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/FavouriteBloc/AddToFavBloc/add_to_fav_bloc.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/config/utils.dart';

class CategoryCompletedWidget extends StatelessWidget {
  final state;
  const CategoryCompletedWidget({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: state.data?.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 5,
          childAspectRatio: 2 / 2.4,
        ),
        itemBuilder: (context, index) {
          final item = state.data?[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                RoutesNames.travelDetailsScreen,
                arguments: item,
              );
            },
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        height: context.mw * 0.45,
                        width: context.mw * 0.45,
                        imageUrl: AppUrl.buildUrlImage(item?.image ?? ''),
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
                          return Positioned(
                            top: context.mh * 0.01,
                            left: context.mw * 0.35,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                context.read<AddToFavBloc>().add(
                                AddToFavEventBtn(placeId: item?.id ?? ""),
                              );
                              },
                              child: Icon(
                                IconlyLight.heart,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
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
                        Text(
                          item?.title ?? '',
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
                          item?.country ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
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
