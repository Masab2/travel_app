// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/LoginBloc/login_bloc.dart';
import 'package:travel_app/config/widgets/widgets.dart';

class PasswordInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final Widget suffixIcon;
  final bool obsecurevalue;
  const PasswordInputWidget(
      {super.key,
      required this.controller,
      required this.obsecurevalue,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        log('Build');
        return CustomizedFeilds(
          controller: controller,
          hintText: 'Password',
          icon: Icons.lock,
          suffixIcon: suffixIcon,
          keyBoardtype: TextInputType.visiblePassword,
          obscuretext: obsecurevalue,
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'Please enter the Password';
            } else if (value.length < 6) {
              return 'Your Password Must be 6 digit';
            }
            return null;
          },
          onChanged: (value) {
            context.read<LoginBloc>().add(
                  LoginPasswordChanged(password: value),
                );
            return null;
          },
        );
      },
    );
  }
}
