part of 'booking_date_Bloc.dart';

abstract class BookingDateEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckInDateChangedEvent extends BookingDateEvent {
  final String checkInDate;

  CheckInDateChangedEvent(this.checkInDate);

  @override
  List<Object?> get props => [checkInDate];
}

class CheckOutDateChangedEvent extends BookingDateEvent {
  final String checkOutDate;

  CheckOutDateChangedEvent(this.checkOutDate);

  @override
  List<Object?> get props => [checkOutDate];
}
