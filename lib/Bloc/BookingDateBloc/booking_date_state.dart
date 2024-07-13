part of './booking_date_Bloc.dart';
class BookingDateState extends Equatable {
  final String checkInDate;
  final String checkOutDate;
  final String? errorMessage;

  const BookingDateState({
    this.checkInDate = '',
    this.checkOutDate = '',
    this.errorMessage
  });

  BookingDateState copyWith({
    String? checkInDate,
    String? checkOutDate,
    String? errorMessage,
  }) {
    return BookingDateState(
      checkInDate: checkInDate ?? this.checkInDate,
      checkOutDate: checkOutDate ?? this.checkOutDate,
      errorMessage:  errorMessage ??  this.errorMessage
    );
  }

  @override
  List<Object?> get props => [checkInDate, checkOutDate, errorMessage];
}
