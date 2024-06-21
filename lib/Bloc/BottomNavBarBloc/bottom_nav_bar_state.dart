part of 'bottom_nav_bar_bloc.dart';

class BottomNavBarState extends Equatable {
  const BottomNavBarState();
  @override
  List<Object?> get props => [];
}

// Initail State

class BottomNavBarInitial extends BottomNavBarState {
  final int page;

  const BottomNavBarInitial({required this.page});
  @override
  List<Object?> get props => [page];
}
