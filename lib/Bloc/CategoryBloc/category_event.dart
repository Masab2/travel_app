part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}


class CategoryLoadedEvent extends CategoryEvent {
  final String cat;

  CategoryLoadedEvent({required this.cat});
   @override
  List<Object?> get props => [cat];
}
