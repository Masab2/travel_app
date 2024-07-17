import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/CreateBookingBloc/create_booking_bloc.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class PhoneInputBookingWidget extends StatelessWidget {
  final TextEditingController phoneController;
  const PhoneInputBookingWidget({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateBookingBloc, CreateBookingState>(
      buildWhen: (previous, current) => previous.phone != current.phone,
      builder: (context, state) {
        return BookingFeildComp(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter the Phone No';
            }
            return null;
          },
          controller: phoneController,
          title: 'Phone',
          hintText: "9876543210",
          icon: IconlyLight.call,
          onChanged: (p0) {
            context
                .read<CreateBookingBloc>()
                .add(PhoneChangedEvent(phone: phoneController.text));
          },
        );
      },
    );
  }
}
