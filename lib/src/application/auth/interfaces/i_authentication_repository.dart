import 'dart:async';

import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:rxdart/rxdart.dart';

abstract class IAuthenticationRepository {
  Stream<AuthResult> get result => _subject.stream;
  void addToStream({required AuthResult result}) => _subject.add(result);
  void addFailureToStream({required Failure failure}) =>
      _subject.addError(failure);
  final _subject = BehaviorSubject<AuthResult>();

  Future<void> signUp({
    required String email,
    required String password,
  });

  Future<void> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<void> refreshTokens();
}

enum AuthResult {
  signedIn(),
  signedOut(),
  signedUp(),
  tokensRefreshed();

  bool get isAuthenticated => !(this == signedOut);
}
