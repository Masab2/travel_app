import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Model/FavouriteModel/favourite_model.dart';
import 'package:travel_app/Repository/FavouriterRepo/fav_repo.dart';

part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavouriteEvent, FavouriteState> {
  final FavRepo favRepo;
  FavBloc({required this.favRepo}) : super(FavouriteInitialState()) {
    on<GetFavouritePlaces>(_onGetFavPlaces);
  }

  void _onGetFavPlaces(
      GetFavouritePlaces event, Emitter<FavouriteState> emit) async {
    try {
      emit(FavouriteLoadingState());
      final data = await favRepo.getFavApi();
      if (data.status == true) {
        emit(
          FavouriteCompletedState(favDataList: data),
        );
      }else{
        emit(FavouriteErrorState(errorMsg: "Could'nt get the Reponse"));
      }
    } catch (e) {
      emit(FavouriteErrorState(errorMsg: e.toString()));
    }
  }
}
