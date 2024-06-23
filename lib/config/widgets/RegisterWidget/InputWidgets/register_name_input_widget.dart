import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/RegisterBloc/register_bloc.dart';
import 'package:travel_app/config/widgets/TextFormFeilds/customizedFeilds.dart';

class RegisterNameInputWidget extends StatelessWidget {
  final TextEditingController controller;

  const RegisterNameInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.firstname != current.firstname,
      builder: (context, state) {
        return CustomizedFeilds(
          controller: controller,
          hintText: 'First Name',
          icon: IconlyLight.profile,
          keyBoardtype: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter the Name';
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
