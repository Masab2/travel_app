
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/LoginBloc/login_bloc.dart';
import 'package:travel_app/config/widgets/widgets.dart';

class EmailInputWidget extends StatelessWidget {
  final TextEditingController controller;
  const EmailInputWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return CustomizedFeilds(
          controller: controller,
          hintText: 'abc@gmail.com',
          icon: Icons.email,
          keyBoardtype: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter the Email Address';
            } else if (!emailRegExp.hasMatch(value)) {
              return 'Please Enter the Email in Proper Format';
            }
            return null;
          },
          onChanged: (value) {
            log(value);
            context.read<LoginBloc>().add(
                  LoginEmailChanged(email: value),
                );
            return null;
          },
        );
      },
    );
  }
}
