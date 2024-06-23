import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/RegisterBloc/register_bloc.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/components/RoundButton/RoundButton.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/widgets/widgets.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final countrycontroller = TextEditingController();
  final citycontroller = TextEditingController();
  final addresscontroller = TextEditingController();

  final ValueNotifier<bool> _obscurepass = ValueNotifier(true);
  final _formfield = GlobalKey<FormState>();
  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    namecontroller.dispose();
    phonecontroller.dispose();
    countrycontroller.dispose();
    citycontroller.dispose();
    addresscontroller.dispose();
    _formfield.currentState?.dispose();
    _obscurepass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => RegisterBloc(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              0.04.ph(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Sign Up Now',
                      style: Theme.of(context).textTheme.headlineMedium!,
                    ),
                  ),
                  Text(
                    'Please fill the Details and Create Account',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: AppColor.greyTextColor),
                  ),
                ],
              ),
              Form(
                  key: _formfield,
                  child: Column(
                    children: [
                      0.03.ph(context),
                      Row(
                        children: [
                          Expanded(
                            child: RegisterNameInputWidget(
                                controller: namecontroller),
                          ),
                          Expanded(
                            child: RegisterLastNameInputWidget(
                                controller: namecontroller),
                          ),
                        ],
                      ),
                      0.03.ph(context),
                      RegisterEmailInputWidget(controller: emailcontroller),
                      0.03.ph(context),
                      ValueListenableBuilder(
                        valueListenable: _obscurepass,
                        builder: (context, value, child) {
                          return RegisterPasswordInputWidget(
                            controller: passwordcontroller,
                            suffixIcon: InkWell(
                                onTap: () {
                                  _obscurepass.value = !_obscurepass.value;
                                },
                                child: _obscurepass.value
                                    ? const Icon(
                                        Icons.visibility_off,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                      )),
                            obsecurevalue: _obscurepass.value,
                          );
                        },
                      ),
                      0.03.ph(context),
                      RegisterPhoneInputWidget(
                        controller: phonecontroller,
                      ),
                      0.03.ph(context),
                      Row(
                        children: [
                          Expanded(
                            child: RegisterCountryInputWidget(
                              controller: countrycontroller,
                            ),
                          ),
                          0.03.ph(context),
                          Expanded(
                            child: RegisterCityInputWidget(
                              controller: citycontroller,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              0.03.ph(context),
              RoundButton(
                title: 'Create Account',
                onPress: () {},
              ),
              0.02.ph(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
