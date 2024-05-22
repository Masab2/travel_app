import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_app/Repository/TravelPlaces/travel_places_repo.dart';
part 'travel_places_event.dart';
part 'travel_places_state.dart';

class TravelPlacesBloc extends Bloc<TravelPlacesEvent, TravelPlacesState> {
  final TravelPlacesRepo travelPlacesRepo;
  TravelPlacesBloc({required this.travelPlacesRepo})
      : super(TravelPlacesInitial()) {
    on<TravePlacesLoadedEvent>(_onTravelPlacesGet);
  }

  void _onTravelPlacesGet(
      TravePlacesLoadedEvent event, Emitter<TravelPlacesState> emit) async {
    try {
      emit(TravelPlacesLoading());
      var data = await travelPlacesRepo.travelPlacesApi();
      if (data.apiStatus == true) {
        emit(TravelPlacesCompleted(data: data));
      } else {
        emit(TravelPlacesError(message: data.message.toString()));
      }
    } catch (e) {
      emit(TravelPlacesError(message: e.toString()));
    }
  }
}
