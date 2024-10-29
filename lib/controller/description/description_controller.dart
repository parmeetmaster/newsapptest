import 'package:company_test/data_sources/services/audio/text_to_speech_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class DescriptionController extends ChangeNotifier {
  TextToSpeechService _textToSpeechService;

  DescriptionController(this._textToSpeechService);

  void readNews(String text) => _textToSpeechService.speak(text);
}

final descriptionProvider =
    ChangeNotifierProvider((ref) => getIt<DescriptionController>());
