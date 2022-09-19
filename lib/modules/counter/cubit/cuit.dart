import 'package:bmi_app/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitalizeStates());

  int counter = 1;

  static CounterCubit get(context) => BlocProvider.of(context);

  void plus() {
    counter++;
    emit(CounterPlusStates());
  }

  void minus() {
    counter--;
    emit(CounterMinusStates());
  }

}