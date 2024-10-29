import 'package:company_test/core/enums.dart';
import 'package:company_test/data_sources/services/core/enviorment_service.dart';
import 'package:company_test/data_sources/services/native/native_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

//import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import 'cache_interceptor.dart';

//rule breaking container

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.queryParameters
        .addAll({"apiKey": getIt<NativeService>().getApiKey});
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    print(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    return super.onError(err, handler);
  }
}

class DioService {
  late final EnviormentService enviormentService;

  late final Dio dio;

  DioService({
    required String baseUrl,
    required String stagingUrl,
  }) {
    this.enviormentService = getIt<EnviormentService>();
    var options = BaseOptions(
      baseUrl: enviormentService.curruntEnviorment == EnviormentEnum.DEBUG
          ? stagingUrl
          : baseUrl,
      connectTimeout: const Duration(seconds: 30),
    );
    dio = Dio(options);
    dio.interceptors.addAll([
      CacheInterceptor(),
      AuthInterceptor(),

      //  DioFirebasePerformanceInterceptor(),
      // if (enviormentService.curruntEnviorment==EnviormentEnum.DEBUG)
      TalkerDioLogger(
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printRequestData: true,
          printResponseData: true,
          //printResponseHeaders: true,
          printResponseMessage: true,
        ),
      )
      /* PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          compact: false,
        )*/
      ,
    ]);
  }

  Future<Response> postJson(
      {required String path, required Map<String, dynamic> data}) async {
    return dio.post(path,
        data: data, options: Options(contentType: Headers.jsonContentType));
  }

  Future<Response> get(
      {required String path, required Map<String, dynamic> queryParms}) async {
    return dio.get(path,
        queryParameters: queryParms,
        options: Options(contentType: Headers.jsonContentType));
  }

  Future<Response> getCustom(
      {required String completeUrl,
      required Map<String, dynamic> queryParms}) async {
    return Dio().get(completeUrl,
        queryParameters: queryParms,
        options: Options(contentType: Headers.jsonContentType));
  }

  Future<Response> getImage(
      {required String path, required Map<String, dynamic> queryParms}) async {
    return dio.get(path,
        queryParameters: queryParms,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
        ));
  }
}
