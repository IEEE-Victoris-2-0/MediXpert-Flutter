import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecdoc/api/api.dart';
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
    });
  }
}
