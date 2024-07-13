import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part './booking_date_event.dart';
part './booking_date_state.dart';

class BookingDateBloc extends Bloc<BookingDateEvent, BookingDateState> {
  BookingDateBloc() : super(const BookingDateState()) {
    on<CheckInDateChangedEvent>(_onCheckInDateChangedEvent);
    on<CheckOutDateChangedEvent>(_onCheckOutDateChangedEvent);
  }

 void _onCheckInDateChangedEvent(
      CheckInDateChangedEvent event, Emitter<BookingDateState> emit) {
    emit(state.copyWith(checkInDate: event.checkInDate));
    if (state.checkOutDate.isNotEmpty &&
        _parseDate(event.checkInDate).isAfter(_parseDate(state.checkOutDate))) {
      emit(state.copyWith(errorMessage: 'Check-in date cannot be after check-out date.'));
    } else {
      emit(state.copyWith(errorMessage: null));
    }
  }

  void _onCheckOutDateChangedEvent(
      CheckOutDateChangedEvent event, Emitter<BookingDateState> emit) {
    emit(state.copyWith(checkOutDate: event.checkOutDate));
    if (state.checkInDate.isNotEmpty &&
        _parseDate(event.checkOutDate).isBefore(_parseDate(state.checkInDate))) {
      emit(state.copyWith(errorMessage: 'Check-out date cannot be before check-in date.'));
    } else {
      emit(state.copyWith(errorMessage: null));
    }
  }

  DateTime _parseDate(String date) {
    final parts = date.split('/');
    return DateTime(int.parse(parts[2]), int.parse(parts[1]), int.parse(parts[0]));
  }
}
