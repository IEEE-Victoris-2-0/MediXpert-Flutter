part of 'medi_bloc.dart';

sealed class MediState {}

final class MediInitial extends MediState {}

class SignupState extends MediState {
   final SignupModel user;
  SignupState(this.user);
}

class SigninState extends MediState {
   final SigninModel user;
  SigninState(this.user);
}

class ForPassState extends MediState {
   final ForgetPassModel user;
  ForPassState(this.user);
}

class ResetPassState extends MediState {
   final ResetPassModel user;
  ResetPassState(this.user);
}
