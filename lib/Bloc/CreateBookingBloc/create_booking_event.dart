part of './create_booking_bloc.dart';

abstract class CreateBookingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Person Changed Event
class PersonChangedEvent extends CreateBookingEvent {
  final String persons;

  PersonChangedEvent({required this.persons});
  @override
  List<Object?> get props => [persons];
}

// address Changed Event
class AddressChangedEvent extends CreateBookingEvent {
  final String address;

  AddressChangedEvent({required this.address});
  @override
  List<Object?> get props => [address];
}

// Phone Changed Events
class PhoneChangedEvent extends CreateBookingEvent {
  final String phone;

  PhoneChangedEvent({required this.phone});
  @override
  List<Object?> get props => [phone];
}

// email Changed Event
class EmailChangedEvent extends CreateBookingEvent {
  final String email;

  EmailChangedEvent({required this.email});
  @override
  List<Object?> get props => [];
}

// Create Booking Pressed Event
class CreateBookingBtnPressedEvent extends CreateBookingEvent {}
