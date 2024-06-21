import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Model/AddToFavModel/add_to_fav_model.dart';
import 'package:travel_app/Repository/FavouriterRepo/fav_repo.dart';

part 'add_to_fav_event.dart';
part 'add_to_fav_state.dart';

class AddToFavBloc extends Bloc<AddToFavEvent, AddToFavState> {
  final FavRepo addToFavRepo;
  AddToFavBloc({required this.addToFavRepo}) : super(AddToFavInitial()) {
    on<AddToFavEventBtn>(_onfavBtnPressed);
  }

  void _onfavBtnPressed(
      AddToFavEventBtn event, Emitter<AddToFavState> emit) async {
    try {
      emit(AddToFavLoading());
      var data = await addToFavRepo.addToFavApi(event.placeId);
      emit(AddToFavSuccess(addToFavModel: data));
    } catch (e) {
      log(e.toString());
      emit(AddToFavError(error: e.toString()));
    }
  }
}
