part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  @override
  List<Object?> get props => [];
}

// Initial State
class ProfileInitialState extends ProfileState {}

// Loading State
class ProfileLoadingState extends ProfileState {}

// Completed State
class ProfileCompletedState extends ProfileState {
  final ProfileModel model;

  ProfileCompletedState({required this.model});
  @override
  List<Object?> get props => [model];
}

// Error State
class ProfileErrorState extends ProfileState {
  final String message;

  ProfileErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
