import 'package:flutter/material.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/services/splashServices/splashServices.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices services = SplashServices();

  @override
  void initState() {
    services.moveToHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Explore Era',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: AppColor.secondaryColorWhite),
            ),
          ),
        ],
      ),
    );
  }
}
