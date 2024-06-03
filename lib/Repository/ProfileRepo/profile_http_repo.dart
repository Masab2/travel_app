import 'dart:convert';
import 'dart:developer';

import 'package:travel_app/Model/ProfileModel/profile_model.dart';
import 'package:travel_app/Model/UserModel/user_model.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/data/Network/NetworkApiServices.dart';
import 'package:travel_app/services/Local%20Storage/localStorage.dart';
import 'package:travel_app/services/SessionManager/sessaion_controller.dart';
import 'profile_repo.dart';

class ProfileHttpRepo implements ProfileRepo {
  final _api = NetworkApiService();
  final LocalStorage storage = LocalStorage();
  @override
  Future<ProfileModel> profileApi() async {
    var id = await storage.readValue("token");
    UserModel? data;
    if (id != null) {
      data = SessionController().userModel = UserModel.fromJson(jsonDecode(id));
      log(data.data?.id ?? "");
    }
    log(id);
    String userId = data?.data?.id ?? "";
    final response = await _api.getGetApiResponse(AppUrl.getProfileUrl(userId));
    log(response.toString());
    ProfileModel model = ProfileModel.fromJson(response);
    log("Email : ${model.data?.email}");
    return model;
  }
}
