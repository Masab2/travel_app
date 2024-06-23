
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_event.dart';
part 'register_states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<FirstNameChanged>(_onNameChangedEvent);
    on<LastNameChanged>(_onLastNameChangedEvent);
    on<EmailChanged>(_onEmailChangedEvent);
    on<PasswordChanged>(_onPassswordChangedEvent);
    on<PhoneChanged>(_onPhoneChangedEvent);
    on<CityChanged>(_onCityChangedEvent);
    on<CountryChanged>(_onCountryChangedEvent);
    on<AddressChanged>(_onAddressChangedEvent);
  }

  void _onEmailChangedEvent(EmailChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPassswordChangedEvent(
      PasswordChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.password));
  }

  void _onPhoneChangedEvent(PhoneChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.phone));
  }

  void _onCityChangedEvent(CityChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.city));
  }

  void _onCountryChangedEvent(
      CountryChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.country));
  }

  void _onAddressChangedEvent(
      AddressChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.address));
  }

  void _onNameChangedEvent(event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.name));
  }

  void _onLastNameChangedEvent(
      LastNameChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.lastname));
  }
}
