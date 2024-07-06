import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/widgets/widgets.dart';

class CreateBookingView extends StatefulWidget {
  const CreateBookingView({super.key});

  @override
  State<CreateBookingView> createState() => _CreateBookingViewState();
}

class _CreateBookingViewState extends State<CreateBookingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booked Trips",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          EmailInputBookingWidget(),
          AddressInputBookingWidget(),
          PhoneInputBookingWidget(),
          CheckInDateWidget(),
          CheckOutDateWidget(),
          PersonCountWidget(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.mh * 0.03, vertical: context.mh * 0.02),
        child: const BookedBtnWidget(),
      ),
    );
  }
}
