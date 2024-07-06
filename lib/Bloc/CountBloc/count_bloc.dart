import 'package:flutter_bloc/flutter_bloc.dart';
import 'count_event.dart'; 
import 'count_state.dart';

class CounterBloc extends Bloc<CountEvent, CountState> {
  CounterBloc() : super(const CountState(count: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });
    on<DecrementCounterEvent>((event, emit) {
      if (state.count > 0) {
        emit(state.copyWith(count: state.count - 1));
      }
    });
  }
}
