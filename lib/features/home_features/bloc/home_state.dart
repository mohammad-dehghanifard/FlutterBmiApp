part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSetHeightState extends HomeState {}

class HomeIncreaseAgeState extends HomeState {}

class HomeDecreaseAgeState extends HomeState {}

class HomeIncreaseWeightState extends HomeState {}

class HomeDecreaseWeightState extends HomeState {}
