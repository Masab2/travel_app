import 'package:flutter/material.dart';
import 'package:travel_app/Model/PlacesModel/places_model.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutesNames.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case RoutesNames.bottomNavBarScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomizedBottomNavBar(),
        );
      case RoutesNames.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case RoutesNames.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      case RoutesNames.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case RoutesNames.onBoardScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardScreen(),
        );
      case RoutesNames.travelDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => TravelDetailsView(
            model: args as PlacesDataList,
          ),
        );
      case RoutesNames.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileView(),
        );
      case RoutesNames.chatConsultancyScreen:
        return MaterialPageRoute(
          builder: (_) => const ChatConsultancyView(),
        );
      case RoutesNames.favScreen:
        return MaterialPageRoute(
          builder: (_) => const FavouriteView(),
        );
      case RoutesNames.categoryScreen:
        return MaterialPageRoute(
          builder: (_) => CategoryView(
            category: args as String,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No Route Defined'),
              ),
            );
          },
        );
    }
  }
}
