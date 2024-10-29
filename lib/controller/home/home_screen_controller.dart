import 'package:company_test/data_sources/services/network/connectivity_service/connectivity_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeScreenController extends ChangeNotifier {
  ConnectivityService connectivityService;

  bool networkOnline=true;

  HomeScreenController(this.connectivityService);

  @PostConstruct()
  void init() {
    connectivityService.subscript1ion.listen((connectivityResult){
     if(connectivityResult.contains(ConnectionState.none)){
       networkOnline=false;
     }else{
       networkOnline=true;
     }
      });
  }
}

final homeScreenProvider =
    ChangeNotifierProvider((ref) => getIt<HomeScreenController>());
