import 'dart:async';

import 'package:clean_auth/src/domain/profile/user.dart';
import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:rxdart/rxdart.dart';

abstract class IUserRepository {
  final _subject = BehaviorSubject<User>();
  Stream<User> get user => _subject.stream;
  void addToStream({required User user}) => _subject.add(user);
  void addFailureToStream({required Failure failure}) =>
      _subject.sink.addError(failure);

  Future<void> getUser();
}
