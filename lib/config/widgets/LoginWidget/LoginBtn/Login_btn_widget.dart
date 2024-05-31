// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/LoginBloc/login_bloc.dart';
import 'package:travel_app/config/components/RoundButton/RoundButton.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/config/utils.dart';
import 'package:travel_app/data/Response/status.dart';

class LoginBtnWidget extends StatelessWidget {
  final formfeild;
  const LoginBtnWidget({super.key, required this.formfeild});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == Status.completed) {
          Utils.displaySnackBarSuccess(context, state.message);
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesNames.onBoardScreen,
            (route) => false,
            arguments: state,
          );
        }
        if (state.status == Status.error) {
          Utils.displaySnackBarError(context, state.message);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return RoundButton(
            loading: state.status == Status.loading ? true : false,
            title: 'Login',
            onPress: () {
              if (formfeild.currentState!.validate()) {
                context.read<LoginBloc>().add(LoginButtonClicked());
              }
            },
          );
        },
      ),
    );
  }
}
