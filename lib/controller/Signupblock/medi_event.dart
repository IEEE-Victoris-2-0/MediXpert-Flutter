part of 'medi_bloc.dart';

sealed class MediEvent {}

class SignupEvent extends MediEvent {
  final String name;
  final String email;
  final String password;
  final String phone;

  SignupEvent(this.name, this.email, this.password, this.phone);
}
