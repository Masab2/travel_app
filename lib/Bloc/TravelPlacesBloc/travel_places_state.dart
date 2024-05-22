part of 'travel_places_bloc.dart';

abstract class TravelPlacesState extends Equatable {
  const TravelPlacesState();
  @override
  List<Object?> get props => [];
}

// initial state
class TravelPlacesInitial extends TravelPlacesState {}

// loading state
class TravelPlacesLoading extends TravelPlacesState {}

// completed state
class TravelPlacesCompleted extends TravelPlacesState {
  final PlacesModel data;
  const TravelPlacesCompleted({required this.data});
  @override
  List<Object?> get props => [data];
}

// error state
class TravelPlacesError extends TravelPlacesState {
  final String message;
  const TravelPlacesError({required this.message});
  @override
  List<Object?> get props => [message];
}
