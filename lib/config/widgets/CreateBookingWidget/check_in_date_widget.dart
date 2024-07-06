import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class CheckInDateWidget extends StatelessWidget {
  const CheckInDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookingFeildComp(
      title: 'Check In Date',
      hintText: 'dd/mm/yyyy', icon: IconlyLight.calendar,
    );
  }
}
