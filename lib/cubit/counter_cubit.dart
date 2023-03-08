// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == "A") {
      teamAPoints += buttonNumber;
      emit(CounterAIncrement());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrement());
    }
  }

  void teamResetPoint() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterTeamsReset());
  }
}
