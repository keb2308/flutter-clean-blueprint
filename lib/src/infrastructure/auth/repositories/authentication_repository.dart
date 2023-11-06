import 'package:clean_auth/src/application/auth/interfaces/i_authentication_repository.dart';
import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/local/tokens_local_storage.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/remote/sign_in_remote_api.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/remote/sign_up_remote_api.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/remote/tokens_remote_api.dart';
import 'package:logger/logger.dart';

class AuthenticationRepository extends IAuthenticationRepository {
  var logger = Logger();
  final TokensRemoteApi refreshTokensDataSource;
  final SignInRemoteApi signInDataSource;
  final SignUpRemoteApi signUpDataSource;
  final TokensLocalStorage tokensLocalDataSource;

  AuthenticationRepository({
    required this.refreshTokensDataSource,
    required this.signInDataSource,
    required this.signUpDataSource,
    required this.tokensLocalDataSource,
  });

  @override
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final response = await signUpDataSource.signUp(
        email: email,
        password: password,
      );
      await tokensLocalDataSource.setAccessToken(token: response.idToken);
      await tokensLocalDataSource.setRefreshToken(token: response.refreshToken);
      addToStream(result: AuthResult.signedUp);
    } on Failure catch (e) {
      addFailureToStream(failure: e);
    }
  }

  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await signInDataSource.signIn(
        email: email,
        password: password,
      );
      await tokensLocalDataSource.setAccessToken(token: response.idToken);
      await tokensLocalDataSource.setRefreshToken(token: response.refreshToken);
      addToStream(result: AuthResult.signedIn);
    } on Failure catch (e) {
      addFailureToStream(failure: e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      tokensLocalDataSource.signOut();
      addToStream(result: AuthResult.signedOut);
    } on Failure catch (e) {
      addFailureToStream(failure: e);
    }
  }

  @override
  Future<void> refreshTokens() async {
    try {
      final refreshToken = await tokensLocalDataSource.getRefreshToken();
      if (refreshToken == null) throw RefreshTokensFailure();
      final tokens = await refreshTokensDataSource.refreshTokens(
        refreshToken: refreshToken,
      );
      await tokensLocalDataSource.setAccessToken(token: tokens.idToken);
      await tokensLocalDataSource.setRefreshToken(token: tokens.refreshToken);
      addToStream(result: AuthResult.tokensRefreshed);
    } catch (_) {
      addFailureToStream(failure: RefreshTokensFailure());
    }
  }
}
