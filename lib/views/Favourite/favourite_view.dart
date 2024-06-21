import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/FavouriteBloc/GetFavBloc/fav_bloc.dart';
import 'package:travel_app/config/components/Error/ErrorWidget.dart';
import 'package:travel_app/config/components/loadingWidget/loadingWidget.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/widgets/widgets.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  @override
  void initState() {
    context.read<FavBloc>().add(GetFavouritePlaces());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourites',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
        actions: [
          const Icon(
            IconlyBold.heart,
            color: Colors.red,
          ),
          0.02.pw(context)
        ],
      ),
      body: Column(
        children: [
          0.02.ph(context),
          const FavouriteTitleWidget(),
          0.02.ph(context),
          BlocBuilder<FavBloc, FavouriteState>(
            builder: (context, state) {
              if (state is FavouriteLoadingState) {
                return const LoadingWidget();
              } else if (state is FavouriteCompletedState) {
                return FavouritePlacesWidget(
                    data: state.favDataList.data ?? []);
              } else if (state is FavouriteErrorState) {
                return ErrorWidgetComp(
                  onPress: () {},
                  errorText: state.errorMsg,
                );
              } else {
                return const SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
