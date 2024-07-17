import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/CreateBookingBloc/create_booking_bloc.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class AddressInputBookingWidget extends StatelessWidget {
  final TextEditingController addressController;
  const AddressInputBookingWidget({super.key, required this.addressController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateBookingBloc, CreateBookingState>(
      buildWhen: (previous, current) => previous.address != current.address,
      builder: (context, state) {
        return BookingFeildComp(
          controller: addressController,
          title: 'Location',
          hintText: "ABC Street XYZ Area",
          icon: IconlyLight.location,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter the Location';
            }
            return null;
          },
          onChanged: (p0) {
            context.read<CreateBookingBloc>().add(
                  AddressChangedEvent(address: addressController.text),
                );
          },
        );
      },
    );
  }
}
