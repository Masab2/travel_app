import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class CheckOutDateWidget extends StatelessWidget {
  const CheckOutDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookingFeildComp(
      title: 'Check Out Date',
      hintText: 'dd/mm/yyyy', icon: IconlyLight.calendar,
    );
  }
}
