import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@singleton
class NativeService {
  static const platform =
      MethodChannel('com.testforCompany.company_test/api_key');
  String _apiKey = "no parsed";

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    try {
      final String result = await platform.invokeMethod('getApiKey');
      _apiKey = result;
    } on PlatformException catch (e) {
      _apiKey = "Failed to get API key: '${e.message}'.";
    }
  }

  String get getApiKey => _apiKey;
}
