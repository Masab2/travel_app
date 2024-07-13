import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class AddressInputBookingWidget extends StatelessWidget {
  final TextEditingController addressController;
  const AddressInputBookingWidget({super.key, required this.addressController});

  @override
  Widget build(BuildContext context) {
    return BookingFeildComp(
      controller: addressController,
      title: 'Location',
      hintText: "ABC Street XYZ Area", icon: IconlyLight.location,
    );
  }
}
