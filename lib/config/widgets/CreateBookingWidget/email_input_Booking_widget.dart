import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class EmailInputBookingWidget extends StatelessWidget {
  final TextEditingController emailController;
  const EmailInputBookingWidget({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return BookingFeildComp(
      controller: emailController,
      title: 'Email',
      hintText: "abc@gmail.com", icon: IconlyLight.message,
    );
  }
}
