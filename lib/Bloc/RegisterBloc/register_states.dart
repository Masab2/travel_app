part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final String email;
  final String password;
  final String phone;
  final String city;
  final String country;
  final String address;
  final String firstname;
  final String lastname;

  const RegisterState({
    this.email = '',
    this.password = '',
    this.phone = '',
    this.city = '',
    this.country = '',
    this.address = '',
    this.firstname = '',
    this.lastname = '',
  });

  // Copy With Function
  RegisterState copyWith({
    String? email,
    String? password,
    String? phone,
    String? city,
    String? country,
    String? address,
    String? firstname,
    String? lastname,
  }) {
    return RegisterState(
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      city: city ?? this.city,
      country: country ?? this.country,
      address: address ?? this.address,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
    );
  }

  @override
  // implement props
  List<Object?> get props =>
      [email, password, phone, city, country, address, firstname, lastname];
}
