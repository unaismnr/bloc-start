import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<Increment>((event, emit) {
      // final currentValue = state.count;
      // final updatedValue = currentValue + 1;

      // return emit(CounterState(count: updatedValue));

      //or
      return emit(CounterState(count: state.count + 1));
    });

    on<Decrement>((event, emit) {
      // final currentValue = state.count;
      // final updatedValue = currentValue - 1;

      // return emit(CounterState(count: updatedValue));

      //or
      return emit(CounterState(count: state.count - 1));
    });
  }
}
