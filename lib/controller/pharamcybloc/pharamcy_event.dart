part of 'pharamcy_bloc.dart';

@immutable
sealed class PharamcyEvent {}

class PharamcyDetailsEvent extends PharamcyEvent{}

class PharamcyProfileEvent extends PharamcyEvent{}

class AddPharamcyEvent extends PharamcyEvent {
  final String pharamcyname;
  final String pharamcyaddress;
  final String pharamcyimage;
  final String pharamcyphone;

  AddPharamcyEvent(this.pharamcyname, this.pharamcyaddress, this.pharamcyimage, this.pharamcyphone);

}
