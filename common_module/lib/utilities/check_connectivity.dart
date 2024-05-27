import 'package:connectivity/connectivity.dart';

///
class CheckConnectivity {

  static List<ConnectivityResult> ONLINE = [
    ConnectivityResult.mobile,
    ConnectivityResult.wifi
  ];

  const CheckConnectivity();
  ///
  Future<bool> isOnline() async {
    try {
      if(ONLINE.contains(await Connectivity().checkConnectivity())) {
        // device online
        return true;
      }
    }
    catch(e) {
      print(e);
    }
    // device offline
    return false;
  }
}

List<ConnectivityResult> ONLINE = [
  ConnectivityResult.mobile,
  ConnectivityResult.wifi
];

Future<bool> isOnline() async {
  try {
    if(ONLINE.contains(await Connectivity().checkConnectivity())) {
      // device online
      return true;
    }
  }
  catch(e) {
    print(e);
  }
  // device offline
  return false;
}