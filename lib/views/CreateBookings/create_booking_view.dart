import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/CreateBookingBloc/create_booking_bloc.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/widgets/widgets.dart';
import 'package:travel_app/main.dart';

class CreateBookingView extends StatefulWidget {
  const CreateBookingView({super.key});

  @override
  State<CreateBookingView> createState() => _CreateBookingViewState();
}

class _CreateBookingViewState extends State<CreateBookingView> {
  late CreateBookingBloc createBookingBloc;
  final TextEditingController personController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController checkInController = TextEditingController();
  final TextEditingController checkOutController = TextEditingController();
  final _formfield = GlobalKey<FormState>();
  @override
  void initState() {
    createBookingBloc = CreateBookingBloc(repo: getIt());
    super.initState();
  }

  @override
  void dispose() {
    personController.dispose();
    addressController.dispose();
    emailController.dispose();
    phoneController.dispose();
    checkInController.dispose();
    checkOutController.dispose();
    _formfield.currentState?.dispose();
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
      body: BlocProvider(
        create: (context) => createBookingBloc,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.mw * 0.02),
            child: Column(
              children: [
                Form(
                    key: _formfield,
                    child: Column(
                      children: [
                        EmailInputBookingWidget(
                            emailController: emailController),
                        AddressInputBookingWidget(
                            addressController: addressController),
                        PhoneInputBookingWidget(
                            phoneController: phoneController),
                        Row(
                          children: [
                            Expanded(
                              child: CheckInDateWidget(
                                checkInDateController: checkInController,
                              ),
                            ),
                            Expanded(
                              child: CheckOutDateWidget(
                                  checkOutController: checkOutController),
                            ),
                          ],
                        ),
                      ],
                    )),
                const PersonCountWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.mh * 0.03, vertical: context.mh * 0.02),
        child: BookedBtnWidget(formFeild: _formfield),
      ),
    );
  }
}
