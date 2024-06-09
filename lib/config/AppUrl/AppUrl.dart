// ignore_for_file: file_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppUrl {
  static String? baseUrl = dotenv.env['BASE_URL'];
  static String loginUrl = "$baseUrl/api/login";
  // get the Profile Url
  static String getProfileUrl(String userId) =>
      '$baseUrl/api/profile?userId=$userId';

  // Get All Places Url
  static String getPlacesUrl = "$baseUrl/api/getAllPlaces";

  // For Image Url
  static String buildUrlImage(String image) {
    return "$baseUrl/img/$image";
  }

  // Gemmine Api Key
  static String? apiKey = dotenv.env['GEMMINE_API_KEY'];
  static String chatUrl =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=$apiKey";
}
