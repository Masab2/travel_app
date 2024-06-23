import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/LoginBloc/login_bloc.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routesnames.dart';
import 'package:travel_app/main.dart';
import '../../../config/widgets/widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginBloc _loginBloc;
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final ValueNotifier<bool> _obscurepass = ValueNotifier(true);
  final _formfield = GlobalKey<FormState>();
  @override
  void initState() {
    _loginBloc = LoginBloc(loginRepo: getIt());
    super.initState();
  }

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
      body: BlocProvider(
        create: (context) => _loginBloc,
        child: SingleChildScrollView(
          child: Column(
            children: [
              0.13.ph(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Sign In Now',
                      style: Theme.of(context).textTheme.headlineMedium!,
                    ),
                  ),
                  Text(
                    'Please sign in to continue our app',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColor.greyTextColor,
                        ),
                  ),
                ],
              ),
              Form(
                  key: _formfield,
                  child: Column(
                    children: [
                      0.03.ph(context),
                      LoginEmailInputWidget(controller: emailcontroller),
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
                                    ),
                            ),
                          );
                        },
                      ),
                      0.03.ph(context),
                      LoginBtnWidget(formfeild: _formfield),
                    ],
                  )),
              0.03.ph(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Dont have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesNames.registerScreen);
                    },
                    child: Text(
                      'Sign Up',
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
      ),
    );
  }
}
