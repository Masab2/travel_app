import 'package:travel_app/Model/PlacesModel/places_model.dart';

abstract class CategoryRepo {
  Future<PlacesModel> getPlacesByCategory (cat);
}