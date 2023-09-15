part of 'medi_bloc.dart';

sealed class MediState {}

final class MediInitial extends MediState {}

class SignupState extends MediState {
  // ignore: prefer_typing_uninitialized_variables
  late final user;
  SignupState(this.user);
}
