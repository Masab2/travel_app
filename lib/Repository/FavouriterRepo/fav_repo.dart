import 'package:travel_app/Model/AddToFavModel/add_to_fav_model.dart';
import 'package:travel_app/Model/FavouriteModel/favourite_model.dart';

abstract class FavRepo {
  Future<AddToFavModel> addToFavApi(placeId);
  Future<FavouriteModel> getFavApi();
}
