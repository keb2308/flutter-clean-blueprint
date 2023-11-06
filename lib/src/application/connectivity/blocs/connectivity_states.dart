import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/connectivity_states.freezed.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial() = _ConnectivityInitialState;
  const factory ConnectivityState.connected() = _ConnectivityConnectedState;
  const factory ConnectivityState.disconnected() = _ConnectivityLoadingState;
}
