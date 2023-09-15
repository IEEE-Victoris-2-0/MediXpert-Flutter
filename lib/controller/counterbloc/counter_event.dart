part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class IncremenEvent extends CounterEvent{}

class ResetEvent extends CounterEvent{}

class DecremenEvent extends CounterEvent{}

