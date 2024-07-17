import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/CreateBookingBloc/create_booking_bloc.dart';
import 'package:travel_app/config/components/RoundButton/RoundButton.dart';

class BookedBtnWidget extends StatelessWidget {
  final formFeild;
  const BookedBtnWidget({super.key, this.formFeild});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateBookingBloc, CreateBookingState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        // TODO: implement listener
      },
      child: RoundButton(
        title: 'Confirm Booking',
        onPress: () {
          if (formFeild.currentState!.validate()) {}
        },
      ),
    );
  }
}
