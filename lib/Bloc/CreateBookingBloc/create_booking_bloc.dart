import 'dart:convert';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Model/CreateBookingModel/create_booking_model.dart';
import 'package:travel_app/Model/UserModel/user_model.dart';
import 'package:travel_app/Repository/CreateBookingRepo/create_booking_repo.dart';
import 'package:travel_app/data/Response/status.dart';
import 'package:travel_app/services/SessionManager/sessaion_controller.dart';

import '../../services/Local Storage/localStorage.dart';

part 'create_booking_event.dart';
part './create_booking_state.dart';

class CreateBookingBloc extends Bloc<CreateBookingEvent, CreateBookingState> {
  final CreateBookingRepo repo;
  final LocalStorage storage = LocalStorage();
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

  void _onCreateBookingBtnEvent(CreateBookingBtnPressedEvent event,
      Emitter<CreateBookingState> emit) async {
    emit(state.copyWith(status: Status.loading));
    var id = await storage.readValue("token");
    UserModel? userIddata;
    if (id != null) {
      userIddata =
          SessionController().userModel = UserModel.fromJson(jsonDecode(id));
      log(userIddata.data?.id ?? "");
    }
    log(id);
    String userId = userIddata?.data?.id ?? "";
    Map<String, dynamic> data = {
      "persons": state.person,
      "address": state.address,
      "phone": state.phone,
      "userId": userId,
      "placeId": state.placeId,
      "checkInDate": state.checkInDate,
      "checkOutDate": state.checkoutDate,
      "email": state.email,
    };

    try {
      var value = await repo.createBookingApi(data);
      if (value.status == true) {
        emit(
          state.copyWith(status: Status.completed, bookingResponse: value),
        );
      }
    } catch (e) {
      emit(state.copyWith(status: Status.error));
    }
  }
}
