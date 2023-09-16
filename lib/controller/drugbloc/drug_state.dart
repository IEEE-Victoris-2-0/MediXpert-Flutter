part of 'drug_bloc.dart';

@immutable
sealed class DrugState {}

final class DrugInitial extends DrugState {}

class DrugsState extends DrugState{
  final List<DrugsModel> drugsmodel;

  DrugsState(this.drugsmodel);
  
}

class DrugDetailsState extends DrugState{
  final List<DrugModel> drugmodel;

  DrugDetailsState(this.drugmodel);

}
