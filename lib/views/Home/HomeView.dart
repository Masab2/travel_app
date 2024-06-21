import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/TravelPlacesBloc/travel_places_bloc.dart';
import 'package:travel_app/config/components/Error/ErrorWidget.dart';
import 'package:travel_app/config/components/loadingWidget/loadingWidget.dart';
import 'package:travel_app/config/extenshion.dart';
import '../../config/widgets/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<TravelPlacesBloc>().add(TravePlacesLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('Build');
    return Scaffold(
      appBar: HomeAppbar.homeAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            0.01.ph(context),
            const HomeTitleWidget(),
            0.02.ph(context),
            const HomeSubtitleBarWidget(
              title: 'Best Destinations',
              view: 'View All',
            ),
            0.01.ph(context),
            Container(
              // color: Colors.red,
              height: context.mh * 0.48,
              child: BlocBuilder<TravelPlacesBloc, TravelPlacesState>(
                builder: (BuildContext context, TravelPlacesState state) {
                  if (state is TravelPlacesLoading) {
                    return const LoadingWidget();
                  } else if (state is TravelPlacesCompleted) {
                    return HomeBestDeastinationWidget(
                      state: state,
                    );
                  } else if (state is TravelPlacesError) {
                    return ErrorWidgetComp(
                      onPress: () {
                        context.read<TravelPlacesBloc>().add(TravePlacesLoadedEvent());
                      },
                      errorText: state.message.toString(),
                    );
                  } else {
                    return const Text("errror");
                  }
                },
              ),
            ),
            0.02.ph(context),
            const HomeSubtitleBarWidget(
              title: 'Popular Categories',
              view: 'View All',
            ),
            0.01.ph(context),
            HomeCategoriesWidget(),
          ],
        ),
      ),
      
    );
  }
}
