part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeEventListLoaded extends HomeState {
  final ListEvent eventList;
  const HomeEventListLoaded(this.eventList) : super();
}

class HomeRedirectUrl extends HomeState {
  final String url;
  const HomeRedirectUrl(this.url) : super();
}

class HomeError extends HomeState {}
