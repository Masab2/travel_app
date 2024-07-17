part of './create_booking_bloc.dart';

class CreateBookingState extends Equatable {
  final String person;
  final String email;
  final String address;
  final String phone;
  final CreateBookingModel? bookingResponse;
  final String? error;
  final Status status;
  final String placeId;
  final String checkInDate;
  final String checkoutDate;

  const CreateBookingState({
    this.person = '',
    this.email = '',
    this.address = '',
    this.phone = '',
    this.bookingResponse,
    this.error,
    this.status = Status.notStarted,
    this.placeId = '',
    this.checkInDate = '',
    this.checkoutDate = '',
  });

  CreateBookingState copyWith({
    String? person,
    String? email,
    String? address,
    String? phone,
    CreateBookingModel? bookingResponse,
    String? error,
    Status? status,
    String? placeId,
    String? checkInDate,
    String? checkoutDate,
  }) {
    return CreateBookingState(
      email: email ?? this.email,
      person: person ?? this.person,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      bookingResponse: bookingResponse ?? this.bookingResponse,
      error: error ?? this.error,
      status: status ?? this.status,
      placeId: placeId ?? this.placeId,
      checkInDate: checkInDate ?? this.checkInDate,
      checkoutDate: checkoutDate ?? this.checkoutDate

    );
  }

  @override
  List<Object?> get props => [person, email, address, phone, status, placeId];
}
