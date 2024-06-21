part of 'add_to_fav_bloc.dart';

abstract class AddToFavEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Add To Fav Button Pressed Event
class AddToFavEventBtn extends AddToFavEvent {
  final String placeId;
  AddToFavEventBtn({required this.placeId});

  @override
  List<Object?> get props => [placeId];
}
