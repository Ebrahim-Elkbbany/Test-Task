part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeUsersLoading extends HomeState {}

class HomeUsersSuccess extends HomeState {}

class HomeUsersFailure extends HomeState {}

class ChangeTabBarState extends HomeState {}
