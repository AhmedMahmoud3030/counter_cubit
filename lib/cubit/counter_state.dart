part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterAIncrement extends CounterState {}

class CounterBIncrement extends CounterState {}

class CounterTeamsReset extends CounterState {}
