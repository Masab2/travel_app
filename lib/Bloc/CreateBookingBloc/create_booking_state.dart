part of './create_booking_bloc.dart';

class CreateBookingState extends Equatable {
  final String person;
  final String email;
  final String address;
  final String phone;
  final CreateBookingModel? bookingResponse;
  final String? error;

  const CreateBookingState({
    this.person = '',
    this.email = '',
    this.address = '',
    this.phone = '',
    this.bookingResponse,
    this.error,
  });

  CreateBookingState copyWith({
    String? person,
    String? email,
    String? address,
    String? phone,
    CreateBookingModel? bookingResponse,
    String? error,
  }) {
    return CreateBookingState(
      email: email ?? this.email,
      person: person ?? this.person,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      bookingResponse: bookingResponse ?? this.bookingResponse,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [person, email, address, phone];
}
