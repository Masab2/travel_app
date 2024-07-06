import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class EmailInputBookingWidget extends StatelessWidget {
  const EmailInputBookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookingFeildComp(
      title: 'Email  (Optional)',
      hintText: "abc@gmail.com", icon: IconlyLight.message,
    );
  }
}
