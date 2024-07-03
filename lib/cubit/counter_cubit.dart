import 'package:apps/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {


  int teamAPoints = 0;
  int teamBPoints = 0;

  CounterCubit():super(CounterAIncrementState());

  void team_Inc({required String team, required int buttonNUm}) {
    if (team == "A") {
      teamAPoints += buttonNUm;
      emit(CounterAIncrementState());
    } else if (team == "B") {
      teamBPoints += buttonNUm;
      emit(CounterBIncrementState());
    }
  }
  void reset(){
     teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterReset());
  }
}
