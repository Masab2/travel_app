import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/CreateBookingBloc/create_booking_bloc.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class EmailInputBookingWidget extends StatelessWidget {
  final TextEditingController emailController;
  const EmailInputBookingWidget({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return BlocBuilder<CreateBookingBloc, CreateBookingState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return BookingFeildComp(
          controller: emailController,
          title: 'Email',
          hintText: "abc@gmail.com",
          icon: IconlyLight.message,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter the Email Address';
            } else if (!emailRegExp.hasMatch(value)) {
              return 'Please Enter the Email in Proper Format';
            }
            return null;
          },
          onChanged: (p0) {
            context.read<CreateBookingBloc>().add(
                  EmailChangedEvent(email: emailController.text),
                );
            return null;
          },
        );
      },
    );
  }
}
