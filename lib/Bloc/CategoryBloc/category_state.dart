part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  @override
  List<Object?> get props => [];
}

// Initial State
class CategoryInitialState extends CategoryState {}

// Loading State
class CategoryLoadingState extends CategoryState {}

// Completed State
class CategoryCompletedState extends CategoryState {
  final List<PlacesDataList>? data;

  CategoryCompletedState({required this.data});
  @override
  List<Object?> get props => [data];
}

// Error State
class CategoryErrorState extends CategoryState {
  final String msg;

  CategoryErrorState({required this.msg});
  @override
  List<Object?> get props => [msg];
}
