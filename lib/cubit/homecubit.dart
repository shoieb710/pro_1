import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/cubit/homestate.dart';

class HomeCubit extends Cubit<Homestate> {
  HomeCubit() :super(IntialCounter(0));

  void increment(){
    emit(IncrementCounter(state.counter +1));
  }

  void decrement(){
    emit(DecrementCounter(state.counter -1));
  }
}


 
