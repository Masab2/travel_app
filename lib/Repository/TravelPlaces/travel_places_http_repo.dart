import 'dart:developer';

import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/Repository/TravelPlaces/travel_places_repo.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/data/Network/NetworkApiServices.dart';

class TravelPlacesHttpRepo implements TravelPlacesRepo {
  final _api = NetworkApiService();
  @override
  Future<PlacesModel> travelPlacesApi() async {
    final response = await _api.getGetApiResponse(AppUrl.getPlacesUrl);
    log(response.toString());
    return PlacesModel.fromJson(response);
  }
}
