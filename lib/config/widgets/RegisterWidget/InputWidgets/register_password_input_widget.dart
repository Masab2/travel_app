import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/RegisterBloc/register_bloc.dart';
import 'package:travel_app/config/widgets/TextFormFeilds/customizedFeilds.dart';

class RegisterPasswordInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final Widget suffixIcon;
  final bool obsecurevalue;
  const RegisterPasswordInputWidget(
      {super.key,
      required this.controller,
      required this.suffixIcon,
      required this.obsecurevalue});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        log('Build');
        return CustomizedFeilds(
          controller: controller,
          hintText: 'Password',
          icon: IconlyLight.password,
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
            return null;
          },
        );
      },
    );
  }
}
