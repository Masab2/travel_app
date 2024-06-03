import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/Bloc/ProfileBloc/profile_bloc.dart';
import 'package:travel_app/Bloc/TravelPlacesBloc/travel_places_bloc.dart';
import 'package:travel_app/Repository/Auth/loginRepo.dart';
import 'package:travel_app/Repository/Auth/login_http_repo.dart';
import 'package:travel_app/Repository/ProfileRepo/profile_http_repo.dart';
import 'package:travel_app/Repository/ProfileRepo/profile_repo.dart';
import 'package:travel_app/Repository/TravelPlaces/travel_places_http_repo.dart';
import 'package:travel_app/Repository/TravelPlaces/travel_places_repo.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routes.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/config/Color/AppColor.dart';

GetIt getIt = GetIt.instance;

void main() {
  serviceLoacator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TravelPlacesBloc(
            travelPlacesRepo: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(
            profileRepo: getIt(),
          ),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Explore Era',
        theme: ThemeData(
          textTheme: TextTheme(
            headlineLarge: GoogleFonts.poppins(
              color: AppColor.blackColor,
              fontSize: context.mh * 0.032,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: GoogleFonts.poppins(
              color: AppColor.blackColor,
              fontSize: context.mh * 0.026,
              fontWeight: FontWeight.w600,
            ),
            headlineSmall: GoogleFonts.poppins(
              color: AppColor.blackColor,
              fontSize: context.mh * 0.023,
              fontWeight: FontWeight.w600,
            ),
            bodyLarge: GoogleFonts.poppins(
              color: AppColor.blackColor,
              fontSize: context.mh * 0.020,
              fontWeight: FontWeight.w600,
            ),
            bodyMedium: GoogleFonts.poppins(
              color: AppColor.blackColor,
              fontSize: context.mh * 0.018,
              fontWeight: FontWeight.w300,
            ),
            bodySmall: GoogleFonts.poppins(
              color: AppColor.blackColor,
              fontSize: context.mh * 0.015,
              fontWeight: FontWeight.w300,
            ),
          ),
          scaffoldBackgroundColor: AppColor.secondaryColorWhite,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
          useMaterial3: true,
        ),
        initialRoute: RoutesNames.splashScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}

void serviceLoacator() {
  getIt.registerLazySingleton<LoginRepo>(() => LoginHttpRepo());
  getIt.registerLazySingleton<TravelPlacesRepo>(() => TravelPlacesHttpRepo());
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileHttpRepo());
}
