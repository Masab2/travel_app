part of 'register_bloc.dart';
abstract class RegisterEvents extends Equatable {
  const RegisterEvents();
  @override
  List<Object?> get props => [];
}

// Email Changed Event

class EmailChanged extends RegisterEvents {
  final String email;

  const EmailChanged({required this.email});
  @override
  List<Object?> get props => [email];
}

// Password Unfocus Event
class EmailUnfocusEvent extends RegisterEvents {}

// Password Changed Event
class PasswordChanged extends RegisterEvents {
  final String password;

  const PasswordChanged({required this.password});
  @override
  List<Object?> get props => [password];
}

// Password Unfocus Event
class PasswordUnfocusEvent extends RegisterEvents {}

// Login Button Clicked Event
class LoginButtonClicked extends RegisterEvents {}
