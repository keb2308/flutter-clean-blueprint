import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/auth_states.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitialState;
  const factory AuthState.loading() = _AuthLoadingState;
  const factory AuthState.authenticated() = _AuthAuthenticatedState;
  const factory AuthState.unauthenticated() = _AuthUnauthenticatedState;
  const factory AuthState.error({
    required Failure failure,
  }) = _AuthErrorState;
}
