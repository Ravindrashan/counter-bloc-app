import 'package:bloc/bloc.dart';
import 'package:counter_bloc_app/bloc/counter/counter_event.dart';
import 'package:counter_bloc_app/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementCounter>(increments);
    on<DecrementCounter>(removes);
  }
  void increments(IncrementCounter event, Emitter<CounterState> emitter) {
    emit(
      state.copyWith(state.count + 1),
    );
  }

  void removes(DecrementCounter event, Emitter<CounterState> emitter) {
    emit(
      state.copyWith(state.count - 1),
    );
  }
}
