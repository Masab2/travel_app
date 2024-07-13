import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/widgets/widgets.dart';

class CreateBookingView extends StatefulWidget {
  const CreateBookingView({super.key});

  @override
  State<CreateBookingView> createState() => _CreateBookingViewState();
}

class _CreateBookingViewState extends State<CreateBookingView> {
  final TextEditingController personController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController checkInController = TextEditingController();
  final TextEditingController checkOutController = TextEditingController();

  @override
  void dispose() {
    personController.dispose();
    addressController.dispose();
    emailController.dispose();
    phoneController.dispose();
    checkInController.dispose();
    checkOutController.dispose();
    super.dispose();
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            EmailInputBookingWidget(emailController: emailController),
            AddressInputBookingWidget(addressController: addressController),
            PhoneInputBookingWidget(phoneController: phoneController),
            Row(
              children: [
                Expanded(
                  child: CheckInDateWidget(
                    checkInDateController: checkInController,
                  ),
                ),
                Expanded(
                  child: CheckOutDateWidget(checkOutController: checkOutController),
                ),
              ],
            ),
            const PersonCountWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.mh * 0.03, vertical: context.mh * 0.02),
        child: const BookedBtnWidget(),
      ),
    );
  }
}
