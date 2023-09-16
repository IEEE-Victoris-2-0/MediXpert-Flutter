part of 'medi_bloc.dart';

sealed class MediEvent {}

class SignupEvent extends MediEvent {
  final String name;
  final String email;
  final String password;
  final String phone;

  SignupEvent(this.name, this.email, this.password, this.phone);
}

class SigninEvent extends MediEvent {
  final String email;
  final String password;

  SigninEvent(this.email, this.password);
}

class ForPassEvent extends MediEvent {
  final String email;

  ForPassEvent(this.email);
}

class ResetPassEvent extends MediEvent {
  final String token;
  final String email;
  final String password;
  final String passwordConfirm;

  ResetPassEvent(this.token, this.email, this.password, this.passwordConfirm);
}
