part of 'login_bloc.dart';
abstract class LoginEvents extends Equatable {
  const LoginEvents();
  @override
  List<Object?> get props => [];
}

// Email Changed Event

class LoginEmailChanged extends LoginEvents {
  final String email;

  const LoginEmailChanged({required this.email});
  @override
  List<Object?> get props => [email];
}

// Password Unfocus Event
class EmailUnfocusEvent extends LoginEvents {}

// Password Changed Event
class LoginPasswordChanged extends LoginEvents {
  final String password;

  const LoginPasswordChanged({required this.password});
  @override
  List<Object?> get props => [password];
}

// Password Unfocus Event
class PasswordUnfocusEvent extends LoginEvents {}

// Login Button Clicked Event
class LoginButtonClicked extends LoginEvents {}
