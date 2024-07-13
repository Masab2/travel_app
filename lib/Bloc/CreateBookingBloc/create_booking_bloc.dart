
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Model/CreateBookingModel/create_booking_model.dart';
import 'package:travel_app/Repository/CreateBookingRepo/create_booking_repo.dart';

part 'create_booking_event.dart';
part './create_booking_state.dart';

class CreateBookingBloc extends Bloc<CreateBookingEvent, CreateBookingState> {
  final CreateBookingRepo repo;
  CreateBookingBloc({required this.repo}) : super(const CreateBookingState()) {
    on(_onEmailChangedEvent);
    on(_onPersonChangedEvent);
    on(_onAddressChangedEvent);
    on(_onPhoneChangedEvent);
    on(_onCreateBookingBtnEvent);
  }

  void _onEmailChangedEvent(
      EmailChangedEvent event, Emitter<CreateBookingState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPersonChangedEvent(
      PersonChangedEvent event, Emitter<CreateBookingState> emit) {
    emit(state.copyWith(email: event.persons));
  }

  void _onAddressChangedEvent(
      AddressChangedEvent event, Emitter<CreateBookingState> emit) {
    emit(state.copyWith(address: event.address));
  }

  void _onPhoneChangedEvent(
      PhoneChangedEvent event, Emitter<CreateBookingState> emit) {
    emit(state.copyWith(phone: event.phone));
  }

  void _onCreateBookingBtnEvent(CreateBookingBtnPressedEvent event, Emitter<CreateBookingState> emit) {
    
  }
}





