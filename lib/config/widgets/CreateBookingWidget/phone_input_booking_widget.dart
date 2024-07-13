import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class PhoneInputBookingWidget extends StatelessWidget {
  final TextEditingController phoneController;
  const PhoneInputBookingWidget({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return BookingFeildComp(
      controller: phoneController,
      title: 'Phone',
      hintText: "9876543210", icon: IconlyLight.call,
    );
  }
}
