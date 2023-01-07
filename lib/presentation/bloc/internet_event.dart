part of 'internet_bloc.dart';

abstract class InternetEvent extends Equatable {
  const InternetEvent();

  @override
  List<Object> get props => [];
}

class InternetCheckEvent extends InternetEvent {
  const InternetCheckEvent();

  @override
  List<Object> get props => [];
}

class InternetConnectedEvent extends InternetEvent {
  const InternetConnectedEvent();

  @override
  List<Object> get props => [];
}

class InternetDisconnectedEvent extends InternetEvent {
  const InternetDisconnectedEvent();

  @override
  List<Object> get props => [];
}
