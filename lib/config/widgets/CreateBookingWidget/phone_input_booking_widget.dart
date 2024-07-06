import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class PhoneInputBookingWidget extends StatelessWidget {
  const PhoneInputBookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookingFeildComp(
      title: 'Phone',
      hintText: "9876543210", icon: IconlyLight.call,
    );
  }
}
