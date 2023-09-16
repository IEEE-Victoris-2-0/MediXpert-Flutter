part of 'pharamcy_bloc.dart';

@immutable
sealed class PharamcyState {}

final class PharamcyInitial extends PharamcyState {}

class PharamcyDetailsState extends PharamcyState{
  final List<PharamcyModel> pharamcymodel;

  PharamcyDetailsState(this.pharamcymodel);

}

class PharamcyProfileState extends PharamcyState{
  final List<PharamcyProfileModel> pharamcyprofilemodel;

  PharamcyProfileState(this.pharamcyprofilemodel);

}

class AddPharamcyState extends PharamcyState {
   final AddPharamcyModel addpharamcymodel;

  AddPharamcyState(this.addpharamcymodel);
}
