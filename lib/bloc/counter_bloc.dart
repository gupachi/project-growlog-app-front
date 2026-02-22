import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/counter_state.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterState(state.count + 1));
    });
    on<counterDecrementPressed>((event, emit) {
      emit(CounterState(state.count - 1));
    });
  }
}
