import 'package:flutter/material.dart';

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
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final ValueNotifier<bool> _obscurepass = ValueNotifier(true);
  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    _obscurepass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            0.10.ph(context),
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
            0.03.ph(context),
            CustomizedFeilds(
              controller: emailcontroller,
              hintText: 'Name',
              keyBoardtype: TextInputType.emailAddress,
              icon: Icons.person,
            ),
            0.03.ph(context),
            EmailInputWidget(controller: emailcontroller),
            0.03.ph(context),
            ValueListenableBuilder(
                valueListenable: _obscurepass,
                builder: (context, value, child) {
                  return PasswordInputWidget(
                    controller: passwordcontroller,
                    obsecurevalue: _obscurepass.value,
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
                  );
                },
              ),
            0.03.ph(context),
            CustomizedFeilds(
              controller: passwordcontroller,
              hintText: '0311*******',
              icon: Icons.phone,
              keyBoardtype: TextInputType.number,
            ),
            0.03.ph(context),
            RoundButton(
              title: 'Create Account',
              onPress: () {},
            ),
            0.03.ph(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
