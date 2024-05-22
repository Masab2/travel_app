part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final String message;
  final Status status;
  final String name;
  const LoginState({
    this.email = '',
    this.password = '',
    this.message = '',
    this.status = Status.notStarted,
    this.name = '',
  });

  // Copy With Function
  LoginState copyWith({
    String? email,
    String? password,
    String? message,
    Status? status,
    String? name,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      status: status ?? this.status,
      name: name ?? this.name,
    );
  }

  @override
  // implement props
  List<Object?> get props => [email, password, message,status,name];
}
