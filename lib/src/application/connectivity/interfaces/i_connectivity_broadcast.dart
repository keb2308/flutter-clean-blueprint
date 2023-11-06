import 'dart:async';

import 'package:rxdart/rxdart.dart';

abstract class IConnectivityBroadcast {
  Stream<bool> get internetStatus => _subject.stream;
  final _subject = BehaviorSubject<bool>();
  void hasInternet(bool hasInternet) => _subject.add(hasInternet);
}
