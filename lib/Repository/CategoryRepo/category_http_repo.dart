import 'dart:developer';

import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/Repository/CategoryRepo/category_repo.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/data/Network/NetworkApiServices.dart';

class CategoryHttpRepo extends CategoryRepo {
  final _api = NetworkApiService();
  @override
  Future<PlacesModel> getPlacesByCategory(cat) async {
    final response = await _api.getGetApiResponse(AppUrl.getCatUrl(cat));
    log(response.toString());
    return PlacesModel.fromJson(response);
  }
}
