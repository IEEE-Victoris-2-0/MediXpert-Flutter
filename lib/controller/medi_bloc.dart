import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tecdoc/api/api.dart';
part 'medi_event.dart';
part 'medi_state.dart';

class MediBloc extends Bloc<MediEvent, MediState> {
  late var user;
  final UserAPI userapi;
  MediBloc(this.userapi) : super(MediInitial()) {
    on<MediEvent>((event, emit) async {
      if (event is SignupEvent) {
        await Future.delayed(const Duration(seconds: 3), () async {
          user= await userapi.signupAPI(
              event.name, event.email, event.password, event.phone);
          emit(SignupState(user));
        });
      }
    });
  }
}
