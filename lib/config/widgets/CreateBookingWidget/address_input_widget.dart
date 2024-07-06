import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class AddressInputBookingWidget extends StatelessWidget {
  const AddressInputBookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookingFeildComp(
      title: 'Location',
      hintText: "ABC Street XYZ Area", icon: IconlyLight.location,
    );
  }
}
