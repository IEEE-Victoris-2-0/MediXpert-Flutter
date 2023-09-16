part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class HomeDetailsState extends HomeState {
  final List<HomeModel> homemodel;

   HomeDetailsState(this.homemodel);

}

class HomeCategoryState extends HomeState {
  final List<HomeCategoryModel> homecategorymodel;

   HomeCategoryState(this.homecategorymodel);

}
