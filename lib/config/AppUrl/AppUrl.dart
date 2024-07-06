// ignore_for_file: file_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppUrl {
  // static String? devUrl = "http://192.168.0.110:8000";
  static String? devUrl =   dotenv.env['BASE_URL'];               
  static String loginUrl = "$devUrl/api/login";
  // get the Profile Url
  static String getProfileUrl(String userId) =>
      '$devUrl/api/profile?userId=$userId';

  // Get All Places Url
  static String getPlacesUrl = "$devUrl/api/getBestDestinationPlaces";

  // For Image Url
  static String buildUrlImage(String image) {
    return "$devUrl/img/$image";
  }

  // Add To Favorite Url
  static String addToFavUrl = "$devUrl/api/addToFavorites";

  // Get Favorite Url
  static String getFavUrl(String userId) =>
      "$devUrl/api/getAllFavourites?userId=$userId";
  
  // Get Places by Catgeory
  static String getCatUrl(String category) =>
      "$devUrl/api/getPlacesByCategory?category=$category";

  // Gemmine Api Key
  static String? apiKey = dotenv.env['GEMMINE_API_KEY'];
  static String chatUrl = "${dotenv.env["CHAT_URL"]}=$apiKey";
}
