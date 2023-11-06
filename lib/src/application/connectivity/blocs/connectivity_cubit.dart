import 'dart:async';

import 'package:clean_auth/src/application/connectivity/blocs/connectivity_states.dart';
import 'package:clean_auth/src/application/connectivity/interfaces/i_connectivity_broadcast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final logger = Logger();
  final IConnectivityBroadcast connectivityBroadcast;
  late final StreamSubscription<bool> _connectivitySubscription;

  ConnectivityCubit({
    required this.connectivityBroadcast,
  }) : super(const ConnectivityState.initial()) {
    logger.d('initialized');
    _subscribe();
  }

  _subscribe() {
    _connectivitySubscription = connectivityBroadcast.internetStatus.listen(
      (connected) {
        if (connected) {
          emit(const ConnectivityState.connected());
        } else {
          emit(const ConnectivityState.disconnected());
        }
      },
    );
  }

  @override
  Future<void> close() {
    logger.d('closed');
    _connectivitySubscription.cancel();
    return super.close();
  }
}
