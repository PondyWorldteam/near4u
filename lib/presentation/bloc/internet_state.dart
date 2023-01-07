part of 'internet_bloc.dart';

enum InternetStatus { connecting, connected, disconnected }

abstract class InternetState extends Equatable {
  const InternetState();

  @override
  List<Object?> get props => [];
}

class InternetValidateState extends InternetState {
  final InternetStatus? internetStatus;
  const InternetValidateState({
    this.internetStatus = InternetStatus.connecting,
  });

  InternetValidateState copyWith({
    InternetStatus? internetStatus,
  }) {
    return InternetValidateState(
      internetStatus: internetStatus ?? this.internetStatus,
    );
  }

  @override
  List<Object?> get props => [internetStatus];
}
