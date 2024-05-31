import 'dart:convert';
import 'dart:developer';

import 'package:travel_app/Model/UserModel/user_model.dart';
import 'package:travel_app/services/Local%20Storage/localStorage.dart';

class SessionController {
  static final SessionController _instance = SessionController._internal();

  final LocalStorage localStorage = LocalStorage();
  UserModel userModel = UserModel();
  bool? isLogin;

  // Private constructor
  SessionController._internal() {
    isLogin = false;
  }

  factory SessionController() {
    return _instance;
  }

  // save user in preferences
  Future<void> saveUserInPrefrences(dynamic user) async {
    await localStorage.setValue('isLogin', 'true');
    await localStorage.setValue('token', jsonEncode(user));
    await localStorage.setValue('id', userModel.data?.id.toString() ?? "");
  }

  // get user from preferences
  Future<void> getUserFromPrefrences() async {
    try {
      var data = await localStorage.readValue('token');
      var isLogin = await localStorage.readValue('isLogin');
      if (data != null) {
        SessionController().userModel = UserModel.fromJson(jsonDecode(data));
      }

      SessionController().isLogin = isLogin == "true" ? true : false;
    } catch (e) {
      log(e.toString());
    }
  }

  // LogOut User
  Future<void> logout() async {
    try {
      await localStorage.clearValue('isLogin');
      await localStorage.clearValue('token');
      SessionController().isLogin = false;
      SessionController().userModel = UserModel(); // Reset userModel
      log('User logged out successfully');
    } catch (e) {
      log(e.toString());
    }
  }
}
