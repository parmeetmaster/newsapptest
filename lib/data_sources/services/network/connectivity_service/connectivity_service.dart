import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@singleton
class ConnectivityService {
  Stream<List<ConnectivityResult>> subscript1ion =
      Connectivity().onConnectivityChanged;

  Future<bool> checkInternetConnection()async {
   List<ConnectivityResult> result=await Connectivity().checkConnectivity();
    if(result.contains(ConnectivityResult.none)){
      return false;
    } else{
      return true;
    }


  }
}
