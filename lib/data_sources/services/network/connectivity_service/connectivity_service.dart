import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@singleton
class ConnectivityService {
  Stream<List<ConnectivityResult>> subscript1ion =
      Connectivity().onConnectivityChanged;
}
