import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit(super.initialState);
  static CounterCubit get (context)=> BlocProvider.of(context ) ;
  int counterB = 0;
  int counterA = 0;
  // int team = 0;
  void addPointA(int buttonNum) {
    counterA += buttonNum;
    emit(Counter_A_IncrementState());
  }

  void addPointB(int buttonNum) {
    counterB += buttonNum;
    emit(Counter_B_IncrementState());
  }

  void resetPoints() {
    counterA = 0;
    counterB = 0;
    emit(Counter_A_B_ResetState());
  }
}
