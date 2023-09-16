part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeDetailsEvent extends HomeEvent{}

class HomeCategoryEvent extends HomeEvent{}
