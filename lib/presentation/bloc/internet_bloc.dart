import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetValidateState> {
  StreamSubscription? _streamSubscription;
  InternetBloc() : super(const InternetValidateState()) {
    // on<InternetCheckEvent>(_onInternetCheck);
    on<InternetConnectedEvent>(
      (event, emit) {
        emit(state.copyWith(internetStatus: InternetStatus.connected));
      },
    );
    on<InternetDisconnectedEvent>(
      (event, emit) {
        emit(state.copyWith(internetStatus: InternetStatus.disconnected));
      },
    );
    _streamSubscription = Connectivity().onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.wifi ||
          event == ConnectivityResult.mobile) {
        add(const InternetConnectedEvent());
      } else {
        if (kDebugMode) {
          print("testing disconnect");
        }
        add(const InternetDisconnectedEvent());
      }
    });
  }

  // emit(state.copyWith(internetStatus: InternetStatus.connecting));

  @override
  Future<void> close() {
    _streamSubscription!.cancel();
    return super.close();
  }
}
