import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/ProfileBloc/profile_bloc.dart';
import 'package:travel_app/config/components/Error/ErrorWidget.dart';
import 'package:travel_app/config/components/loadingWidget/loadingWidget.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/config/widgets/widgets.dart';
import 'package:travel_app/services/SessionManager/sessaion_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    context.read<ProfileBloc>().add(ProfileLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          0.02.ph(context),
          const ProfileWidgetmainIcon(),
          0.02.ph(context),
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileLoadingState) {
                return const LoadingWidget();
              } else if (state is ProfileCompletedState) {
                return ProfileWidgetStateCompleted(state: state);
              } else if (state is ProfileErrorState) {
                return ErrorWidgetComp(
                  errorText: state.message,
                  onPress: () {},
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          ProfileWidgetListTile(
            icon: IconlyBold.logout,
            title: "LogOut",
            subtitle: "logout your account",
            ontap: () {
              SessionController().logout().then((value) {
                if (SessionController().isLogin == false) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RoutesNames.loginScreen, (route) => false);
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
