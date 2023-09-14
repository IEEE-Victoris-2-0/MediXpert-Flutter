part of 'medi_bloc.dart';

@immutable
sealed class MediState {}

final class MediInitial extends MediState {}

class SignupState extends MediState {
  final   user;
  SignupState(this.user);
}
