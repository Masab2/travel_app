import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/RegisterBloc/register_bloc.dart';
import 'package:travel_app/config/widgets/TextFormFeilds/customizedFeilds.dart';

class RegisterCountryInputWidget extends StatelessWidget {
  final TextEditingController controller;
  const RegisterCountryInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.country != current.country,
      builder: (context, state) {
        return CustomizedFeilds(
          controller: controller,
          hintText: 'Country',
          icon: IconlyLight.location,
          keyBoardtype: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter the Country Name';
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
