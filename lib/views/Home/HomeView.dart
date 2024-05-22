import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/TravelPlacesBloc/travel_places_bloc.dart';
import 'package:travel_app/config/components/Error/ErrorWidget.dart';
import 'package:travel_app/config/components/loadingWidget/loadingWidget.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/main.dart';
import '../../config/widgets/widgets.dart';

class HomeView extends StatefulWidget {
  final String name;
  const HomeView({super.key, required this.name});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late TravelPlacesBloc travelPlacesBloc;
  @override
  void initState() {
    travelPlacesBloc = TravelPlacesBloc(travelPlacesRepo: getIt());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar.homeAppBar(context),
      body: Column(
        children: [
          0.01.ph(context),
          const HomeTitleWidget(),
          0.01.ph(context),
          Expanded(
            child: BlocProvider(
                create: (context) =>
                    travelPlacesBloc..add(TravePlacesLoadedEvent()),
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
                          onPress: () {}, errorText: state.message.toString());
                    } else {
                      return const SizedBox();
                    }
                  },
                ),),
          ),
        ],
      ),
    );
  }
}
