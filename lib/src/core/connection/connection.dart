import 'package:connectivity/connectivity.dart';

ConnectivityResult? _connectivityResult;

class ConnectionHelper {
  static Future _connect() async {
    _connectivityResult = await Connectivity().checkConnectivity();
  }

  static Future<bool> hasConnection() async {
    await _connect();
    if (_connectivityResult == ConnectivityResult.mobile) return true;
    if (_connectivityResult == ConnectivityResult.wifi) return true;
    return false;
  }

  static Stream<ConnectivityResult> connectionListener() {
    return Connectivity().onConnectivityChanged;
  }
}
