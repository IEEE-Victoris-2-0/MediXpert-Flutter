import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tecdoc/api/homeapi/homeapi.dart';
import 'package:tecdoc/model/homeModel.dart/home_model.dart';
import 'package:tecdoc/model/homeModel.dart/homecategory_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeAPI homeAPI;
  HomeBloc({required this.homeAPI}): super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
       
       if(event is HomeDetailsEvent){
        final homecategory=await homeAPI.homeAPI();
        emit(HomeDetailsState(homecategory));
      }

      if(event is HomeCategoryEvent){
        final homecategory=await homeAPI.homeCategoryAPI();
        emit(HomeCategoryState(homecategory));
      }
    });
  }
}
