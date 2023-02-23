import 'package:bloc/bloc.dart';
import 'package:chapter11/bloc/counter_states.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit(super.initialState);

  int teamAPoints = 0 , teamBPoints= 0;

  void incrementTeam(int points , int team){
    if(team == 1 ){ // increment team A

      teamAPoints+=points ;

      emit(CounterIncrementState());

    }
    else { // increment team B
      teamBPoints+=points ;
      emit(CounterIncrementState());
    }
  }

  void resetPoints(){
    teamBPoints = 0 ;
    teamAPoints= 0;

    emit(ResetCounterState());
  }
}