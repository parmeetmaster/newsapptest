


import 'dart:convert';

import 'package:company_test/data_sources/services/network/connectivity_service/connectivity_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheInterceptor extends Interceptor {
  late final SharedPreferences sharedPreferences;

  CacheInterceptor(){
    sharedPreferences=getIt<SharedPreferences>();
  }

  @override
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {
    // Cache the response
    if (response.statusCode == 200) {

      if(response.requestOptions.uri.queryParameters["page"]=="1"){
        await sharedPreferences.setString(response.requestOptions.path, jsonEncode(response.data));
      }


    }
    return super.onResponse(response, handler);
  }

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Check for internet connection
    bool isConnected = await _checkInternetConnection();
    if (!isConnected) {
      // Retrieve cached response
      String? cachedResponse = sharedPreferences.getString(options.path);
      if (cachedResponse != null) {
        // Create a response object from the cached data
        Response response = Response(
          requestOptions: options,
          data: jsonDecode(cachedResponse),
          statusCode: 200,
        );
        return handler.resolve(response);
      }
    }
    return super.onRequest(options, handler);
  }

  Future<bool> _checkInternetConnection() async {
   return await getIt<ConnectivityService>().checkInternetConnection();
  }
}