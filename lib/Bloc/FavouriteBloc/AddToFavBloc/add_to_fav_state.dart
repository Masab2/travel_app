part of 'add_to_fav_bloc.dart';

abstract class AddToFavState extends Equatable {
  @override
  List<Object?> get props => [];
}

// Initail State
class AddToFavInitial extends AddToFavState {}

// Loading State
class AddToFavLoading extends AddToFavState {}

// Success State
class AddToFavSuccess extends AddToFavState {
  final AddToFavModel addToFavModel;

  AddToFavSuccess({required this.addToFavModel});
  @override
  List<Object?> get props => [addToFavModel];
}

// Error State
class AddToFavError extends AddToFavState {
  final String error;
  AddToFavError({required this.error});
  @override
  List<Object?> get props => [error];
}
