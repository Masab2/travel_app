import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/services/SessionManager/sessaion_controller.dart';

class SplashServices {
  void moveToHome(BuildContext context) {
    SessionController().getUserFromPrefrences().then((value) {
      if (SessionController().isLogin == true) {
        Timer(const Duration(seconds: 4), () {
        Navigator.pushReplacementNamed(context, RoutesNames.bottomNavBarScreen);
      });
      } else {
        Timer(const Duration(seconds: 4), () {
        Navigator.pushReplacementNamed(context, RoutesNames.loginScreen);
      });
      }
    }).onError((error, stackTrace) {
      Timer(const Duration(seconds: 4), () {
        Navigator.pushReplacementNamed(context, RoutesNames.loginScreen);
      });
    });
  }
}
