import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_event.dart';
part 'register_states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<EmailChanged>(_onEmailChangedEvent);
    on<PasswordChanged>(_onPassswordChangedEvent);
  }

  void _onEmailChangedEvent(EmailChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: 'email'));
  }

  void _onPassswordChangedEvent(
      PasswordChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: 'email'));
  }
}
