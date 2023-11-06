import 'dart:async';

import 'package:clean_auth/src/application/auth/blocs/auth_states.dart';
import 'package:clean_auth/src/application/auth/interfaces/i_authentication_repository.dart';
import 'package:clean_auth/src/application/auth/sign_in.dart';
import 'package:clean_auth/src/application/auth/sign_up.dart';
import 'package:clean_auth/src/application/shared/use_case.dart';
import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class AuthCubit extends Cubit<AuthState> {
  var logger = Logger();
  final IAuthenticationRepository authRepository;
  final UseCase signUpUseCase;
  final UseCase signInUseCase;
  final UseCase signOutUseCase;
  final UseCase refreshTokensUseCase;

  late final StreamSubscription<AuthResult> _authSubscription;

  AuthCubit({
    required this.authRepository,
    required this.signUpUseCase,
    required this.signInUseCase,
    required this.signOutUseCase,
    required this.refreshTokensUseCase,
  }) : super(const AuthState.initial()) {
    logger.d('initialized');
    _subscribe();
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    emit(const AuthState.loading());
    signUpUseCase(
      SignUpArgs(
        email: email,
        password: password,
      ),
    );
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(const AuthState.loading());
    await signInUseCase(
      SignInArgs(
        email: email,
        password: password,
      ),
    );
  }

  Future<void> signOut() async {
    emit(const AuthState.loading());
    await signOutUseCase(NoParams());
  }

  void refreshTokens() {
    emit(const AuthState.loading());
    refreshTokensUseCase(NoParams());
  }

  void _subscribe() {
    _authSubscription = authRepository.result.listen(
      (result) {
        if (result == AuthResult.signedOut) if (result.isAuthenticated) {
          emit(const AuthState.authenticated());
        } else {
          emit(const AuthState.unauthenticated());
        }
      },
      onError: (error) {
        if (error is RefreshTokensFailure) {
          emit(const AuthState.unauthenticated());
        }
      },
    );
  }

  @override
  Future<void> close() {
    logger.d('closed');
    _authSubscription.cancel();
    return super.close();
  }
}
