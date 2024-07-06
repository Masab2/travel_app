import 'package:equatable/equatable.dart';

abstract class CountEvent extends Equatable {
  const CountEvent();

  @override
  List<Object?> get props => [];
}

class IncrementCounterEvent extends CountEvent {}

class DecrementCounterEvent extends CountEvent {}
