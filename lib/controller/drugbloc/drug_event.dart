part of 'drug_bloc.dart';

@immutable
sealed class DrugEvent {}

class DrugsEvent extends DrugEvent{}

class DrugDetailsEvent extends DrugEvent{}
