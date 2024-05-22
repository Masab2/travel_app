
import 'package:travel_app/Model/PlacesModel/places_model.dart';

abstract  class TravelPlacesRepo {
  Future<PlacesModel> travelPlacesApi();
}