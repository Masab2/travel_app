import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_app/config/routes/routesnames.dart';

class SplashServices {
  void moveToHome(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, RoutesNames.onBoardScreen);
    });
  }
}
