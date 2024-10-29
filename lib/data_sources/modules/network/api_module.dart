



import 'package:company_test/data_sources/services/network/api/dio_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule{
  @lazySingleton
  DioService get newApi => DioService(
      baseUrl: 'https://newsapi.org',
      stagingUrl: 'https://newsapi.org');

}