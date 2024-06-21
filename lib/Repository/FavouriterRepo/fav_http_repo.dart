import 'dart:developer';

import 'package:travel_app/Model/AddToFavModel/add_to_fav_model.dart';
import 'package:travel_app/Model/FavouriteModel/favourite_model.dart';
import 'package:travel_app/Repository/FavouriterRepo/fav_repo.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/data/Network/NetworkApiServices.dart';
import 'package:travel_app/services/Local%20Storage/localStorage.dart';

class FavHttpRepo extends FavRepo {
  final _api = NetworkApiService();
  final LocalStorage storage = LocalStorage();
  @override
  Future<AddToFavModel> addToFavApi(placeId) async {
    var userId = await storage.readValue("id") ?? "";
    log(userId.toString());
    Map<String, String> data = {
      "placeId": placeId,
      "userId": userId,
    };
    final response = await _api.getPostApiResponse(AppUrl.addToFavUrl, data);
    log(response.toString());
    return AddToFavModel.fromJson(response);
  }

  // get Favourite Api
  @override
  Future<FavouriteModel> getFavApi() async {
    var userId = await storage.readValue("id") ?? "";
    final response = await _api.getGetApiResponse(AppUrl.getFavUrl(userId));
    log(response.toString());
    return FavouriteModel.fromJson(response);
  }
}
