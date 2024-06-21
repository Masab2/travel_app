part of 'fav_bloc.dart';

abstract class FavouriteState extends Equatable {
  @override
  List<Object> get props => [];
}

// initial state
class FavouriteInitialState extends FavouriteState {}

// Loading State
class FavouriteLoadingState extends FavouriteState {}

// Completed State
class FavouriteCompletedState extends FavouriteState {
  final FavouriteModel favDataList;

  FavouriteCompletedState({required this.favDataList});
  @override
  List<Object> get props => [favDataList];
}

// Error State
class FavouriteErrorState extends FavouriteState {
  final String errorMsg;

  FavouriteErrorState({required this.errorMsg});
  @override
  List<Object> get props => [errorMsg];
}
