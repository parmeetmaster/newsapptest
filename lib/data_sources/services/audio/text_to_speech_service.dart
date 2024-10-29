
import 'package:flutter_tts/flutter_tts.dart';
import 'package:injectable/injectable.dart';

@singleton
class TextToSpeechService{


  Future<void> speak(String text)async{
    FlutterTts flutterTts = FlutterTts();
    List<dynamic> languages = await flutterTts.getLanguages;

    await flutterTts.setLanguage("en-US");

    await flutterTts.setSpeechRate(0.45);

    await flutterTts.setVolume(1.0);

    await flutterTts.setPitch(1.0);

    //   await flutterTts.isLanguageAvailable("en-US");

// iOS, Android and Web only
//see the "Pausing on Android" section for more info
    await flutterTts.pause();
    final voices= await  flutterTts.getVoices;
    print(voices);
    print((((voices as List).first) as Map)["name"]);
    final res={"name": (((voices as List).first) as Map)["name"], "locale": (((voices as List).first) as Map)["locale"]};


// iOS, macOS, and Android only

    await flutterTts.setVoice({"name": "Karen", "locale": "en-AU"});
    var result = await flutterTts.speak(text);


  }


}