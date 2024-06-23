part of 'register_bloc.dart';

abstract class RegisterEvents extends Equatable {
  const RegisterEvents();
  @override
  List<Object?> get props => [];
}

// Name Changed Event
class FirstNameChanged extends RegisterEvents {
  final String name;

  const FirstNameChanged({required this.name});

  @override
  List<Object?> get props => [name];
}

// Name Unfocus Event
class FirstNameUnfocusEvent extends RegisterEvents {}

class LastNameChanged extends RegisterEvents {
  final String lastname;

  const LastNameChanged({required this.lastname});

  @override
  List<Object?> get props => [lastname];
}

// Name Unfocus Event
class LastNameUnfocusEvent extends RegisterEvents {}

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

// phone Changed Event
class PhoneChanged extends RegisterEvents {
  final String phone;

  const PhoneChanged({required this.phone});
  @override
  List<Object?> get props => [phone];
}

// Phone Unfocus Event
class PhoneUnfocusEvent extends RegisterEvents {}

// city Changed Event
class CityChanged extends RegisterEvents {
  final String city;

  const CityChanged({required this.city});
  @override
  List<Object?> get props => [city];
}

// city Unfocus Event
class CityUnfocusEvent extends RegisterEvents {}

// Country Changed Event
class CountryChanged extends RegisterEvents {
  final String country;

  const CountryChanged({required this.country});
  @override
  List<Object?> get props => [country];
}

// Country Unfocus Event
class CountryUnfocusEvent extends RegisterEvents {}

// Address Changed Event
class AddressChanged extends RegisterEvents {
  final String address;

  const AddressChanged({required this.address});
  @override
  List<Object?> get props => [address];
}

// Address Unfocus Event
class AddressUnfocusEvent extends RegisterEvents {}

// Login Button Clicked Event
class RegisterButtonClicked extends RegisterEvents {}
