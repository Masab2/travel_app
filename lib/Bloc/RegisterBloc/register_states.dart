part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final String email;
  final String password;
  const RegisterState({
    this.email = '',
    this.password = '',
  });

  // Copy With Function
  RegisterState copyWith({
    String? email,
    String? password,
  }) {
    return RegisterState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  // implement props
  List<Object?> get props => [email,password];
}
