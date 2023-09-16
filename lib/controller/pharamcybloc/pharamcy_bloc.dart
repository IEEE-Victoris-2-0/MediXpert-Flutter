import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tecdoc/api/pharamcyapi/pharamcyapi.dart';
import 'package:tecdoc/model/pharamcyModel/addpharamcy_model.dart';
import 'package:tecdoc/model/pharamcyModel/pharamcy_Model.dart';
import 'package:tecdoc/model/pharamcyModel/pharamcyprofile.dart';

part 'pharamcy_event.dart';
part 'pharamcy_state.dart';

class PharamcyBloc extends Bloc<PharamcyEvent, PharamcyState> {
  final PharamcyAPI pharamcyAPI;
  late var user;
  PharamcyBloc({required this.pharamcyAPI}) : super(PharamcyInitial()) {
    on<PharamcyEvent>((event, emit) async {
      if (event is PharamcyDetailsEvent) {
        final pharamcydetails = await pharamcyAPI.pharamcyAPI();
        emit(PharamcyDetailsState(pharamcydetails));
      }

      if (event is PharamcyProfileEvent) {
        final pharamcyprofile = await pharamcyAPI.pharamcyprofileAPI();
        emit(PharamcyProfileState(pharamcyprofile));
      }

      if (event is AddPharamcyEvent) {
        await Future.delayed(const Duration(seconds: 3), () async {
          user = await pharamcyAPI.addPharamcyAPI(event.pharamcyname,
              event.pharamcyaddress, event.pharamcyimage, event.pharamcyphone);
          emit(AddPharamcyState(user));
        });
      }
    });
  }
}
