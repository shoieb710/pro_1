import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/bloc/pro_event.dart';
import 'package:pro_1/bloc/pro_state.dart';

class ProBloc extends Bloc<CounterEvent, Homestate> {
  ProBloc() : super(IntialCounter(0)) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        emit(IncrementCounter(state.counter + 1));
      } else {
        emit(DecrementCounter(state.counter - 1));
      }
    });
  }
}
