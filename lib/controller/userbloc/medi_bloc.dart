import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecdoc/api/userapi/api.dart';
import 'package:tecdoc/model/userModel/forpass_model.dart';
import 'package:tecdoc/model/userModel/resetpass_model.dart';
import 'package:tecdoc/model/userModel/signin_model.dart';
import 'package:tecdoc/model/userModel/user_model.dart';
part 'medi_event.dart';
part 'medi_state.dart';

class MediBloc extends Bloc<MediEvent, MediState> {
  // ignore: prefer_typing_uninitialized_variables
  late var user;
  final UserAPI userapi;
  MediBloc(this.userapi) : super(MediInitial()) {
    on<MediEvent>((event, emit) async {
      if (event is SignupEvent) {
        await Future.delayed(const Duration(seconds: 3), () async {
          user = await userapi.signupAPI(
              event.name, event.email, event.password, event.phone);
          emit(SignupState(user));
        });
      }

      if (event is SigninEvent) {
        await Future.delayed(const Duration(seconds: 3), () async {
          user = await userapi.signinAPI(event.email, event.password);
          emit(SigninState(user));
        });
      }

          if (event is ForPassEvent) {
        await Future.delayed(const Duration(seconds: 3), () async {
          user = await userapi.forgetPassAPI(event.email);
          emit(ForPassState(user));
        });
      }

       if (event is ResetPassEvent) {
        await Future.delayed(const Duration(seconds: 3), () async {
          user = await userapi.resetPassAPI(event.email,event.password,event.passwordConfirm,event.token);
          emit(ResetPassState(user));
        });
      }
    });
  }
}
