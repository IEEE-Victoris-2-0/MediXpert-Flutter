import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tecdoc/api/drugapi/drugapi.dart';
import 'package:tecdoc/model/drugModel/drug_model.dart';
import 'package:tecdoc/model/drugModel/drugs_model.dart';

part 'drug_event.dart';
part 'drug_state.dart';

class DrugBloc extends Bloc<DrugEvent, DrugState> {
  final DrugAPI drugAPI;
  DrugBloc({required this.drugAPI}) : super(DrugInitial()) {
    on<DrugEvent>((event, emit) async {
      if(event is DrugsEvent){
        final drugsmodel=await drugAPI.drugsAPI();
        emit(DrugsState(drugsmodel));
      }

      if(event is DrugDetailsEvent){
        final drugmodel=await drugAPI.drugAPI();
        emit(DrugDetailsState(drugmodel));
      }
    });
  }
}
