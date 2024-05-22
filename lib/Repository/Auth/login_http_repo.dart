import 'dart:developer';

import 'package:travel_app/Model/UserModel/user_model.dart';
import 'package:travel_app/Repository/Auth/loginRepo.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/data/Network/NetworkApiServices.dart';

class LoginHttpRepo implements LoginRepo {
  final _api = NetworkApiService();
  @override
  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.getPostApiResponse(AppUrl.loginUrl, data);
    UserModel userModel = UserModel.fromJson(response);
    log(userModel.data!.email.toString());
    return userModel;
  }
}
