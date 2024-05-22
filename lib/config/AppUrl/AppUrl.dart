// ignore_for_file: file_names

class AppUrl {
  static String baseUrl = "http://192.168.0.108:8000/api";
  static String loginUrl = "$baseUrl/login";

  // Get All Places Url
  static String getPlacesUrl = "$baseUrl/getAllPlaces";
  
  // For Image Url
  static String buildUrlImage(String image) {
    return "http://192.168.0.108:8000/img/$image";
  }
}
