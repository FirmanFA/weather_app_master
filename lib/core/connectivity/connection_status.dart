// ignore_for_file: avoid_print

//InternetAddress utility
import 'dart:async'; //For StreamController/Stream

import 'package:internet_connection_checker/internet_connection_checker.dart';

bool hasConnection = false;

class ConnectionStatusSingleton {
  //This creates the single instance by calling the `_internal` constructor specified below
  static final ConnectionStatusSingleton _singleton =
      ConnectionStatusSingleton._internal();

  ConnectionStatusSingleton._internal();

  bool isDisconnectedDialogShown = false;

  factory ConnectionStatusSingleton() {
    return _singleton;
  }

  //This is how we'll allow subscribing to connection changes
  StreamController connectionChangeController = StreamController.broadcast();

  //flutter_connectivity
  final InternetConnectionChecker _connectivity = InternetConnectionChecker();

  //Hook into flutter_connectivity's Stream to listen for changes
  //And check the connection status out of the gate
  void initialize() {
    _connectivity.onStatusChange.listen(_connectionChange);
  }

  Stream get connectionChange => connectionChangeController.stream;

  //A clean up method to close our StreamController
  //   Because this is meant to exist through the entire application life cycle this isn't
  //   really an issue
  void dispose() {
    connectionChangeController.close();
  }

  void _connectionChange(InternetConnectionStatus result) async {
    print("_connectivity connection changed: $result");
    //if ConnectivityResult.none, there's no need to "check"
    if (result == InternetConnectionStatus.disconnected &&
        hasConnection == false) {

      /// TODO - do something when the internet is not connected

    }else{
      hasConnection = false;
    }
  }

  Future<bool> isConnected() async {
    final result = await _connectivity.hasConnection;

    return result;
  }
}

final connectionStatus = ConnectionStatusSingleton();
