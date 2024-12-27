import 'package:clean_auth/src/application/connectivity/interfaces/i_connectivity_broadcast.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class ConnectivityBroadcast extends IConnectivityBroadcast {
  final InternetConnection _connectionChecker;

  ConnectivityBroadcast({required connectionChecker})
      : _connectionChecker = connectionChecker {
    _subscribe();
  }

  void _subscribe() {
    _connectionChecker.onStatusChange.listen((InternetStatus status) {
      if (status == InternetStatus.connected) {
        hasInternet(true);
      } else {
        hasInternet(false);
      }
    });
  }
}
