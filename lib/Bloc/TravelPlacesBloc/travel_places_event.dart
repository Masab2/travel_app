part of 'travel_places_bloc.dart';
abstract class TravelPlacesEvent extends Equatable {
  const TravelPlacesEvent();
  @override
  List<Object?> get props => [];
}

class TravePlacesLoadedEvent extends TravelPlacesEvent {
  @override
  List<Object?> get props => [];
}

class TravelPlacesCategorySelectedEvent extends TravelPlacesEvent {
  final String category;

  const TravelPlacesCategorySelectedEvent(this.category);

  @override
  List<Object> get props => [category];
}