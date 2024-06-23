import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/RegisterBloc/register_bloc.dart';
import 'package:travel_app/config/widgets/TextFormFeilds/customizedFeilds.dart';

class RegisterEmailInputWidget extends StatelessWidget {
  final TextEditingController controller;
  const RegisterEmailInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return CustomizedFeilds(
          controller: controller,
          hintText: 'abc@gmail.com',
          icon: IconlyLight.message,
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

            return null;
          },
        );
      },
    );
  }
}
