part of 'bottom_nav_bar_bloc.dart';
abstract class BottomNavBarEvent extends Equatable {
  const BottomNavBarEvent();
  @override
  List<Object?> get props => [];
}

// Change The Index Event
class ChangeIndexEvent extends BottomNavBarEvent {
  final int index;
  const ChangeIndexEvent({required this.index});
  @override
  List<Object?> get props => [index];
}
