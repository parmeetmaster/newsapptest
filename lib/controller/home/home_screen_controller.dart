import 'package:company_test/data_sources/services/audio/text_to_speech_service.dart';
import 'package:company_test/data_sources/services/network/connectivity_service/connectivity_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeScreenController extends ChangeNotifier {
  ConnectivityService connectivityService;
  TextToSpeechService _speechService;

  bool networkOnline=true;

  HomeScreenController(this.connectivityService,this._speechService);

  @PostConstruct()
  void init() {
    print("init done");

    connectivityService.subscript1ion.listen((connectivityResult){
      print("@# ${connectivityResult}");

     if(connectivityResult.contains( ConnectivityResult.none)){
       networkOnline=false;
       _speechService.speak("You are offline.Please enable Internet for latest news");
     }else{
       networkOnline=true;
       _speechService.speak("You are online.Stay Tune with latest news");
     }
     notifyListeners();
      });
  }
}

final homeScreenProvider =
    ChangeNotifierProvider((ref) => getIt<HomeScreenController>());
