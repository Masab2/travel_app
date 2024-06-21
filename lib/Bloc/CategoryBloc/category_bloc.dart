import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/Repository/CategoryRepo/category_repo.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepo categoryRepo;
  CategoryBloc({required this.categoryRepo}) : super(CategoryInitialState()) {
    on<CategoryLoadedEvent>(_onCategoryLoaded);
  }

  void _onCategoryLoaded(
      CategoryLoadedEvent event, Emitter<CategoryState> emit) async {
    emit(CategoryLoadingState());
    try {
      final data = await categoryRepo.getPlacesByCategory(event.cat);
      if (data.apiStatus == true) {
        emit(
          CategoryCompletedState(data: data.data ?? []),
        );
      } else {
        emit(CategoryErrorState(msg: 'Could not get places'));
      }
    } catch (e) {
      emit(CategoryErrorState(msg: e.toString()));
    }
  }
}
