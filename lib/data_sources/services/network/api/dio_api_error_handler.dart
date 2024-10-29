import 'dart:async';


import 'package:company_test/data_sources/models/common/api_error/api_error_response.dart';
import 'package:company_test/data_sources/models/common/api_failure/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as d;
import 'package:injectable/injectable.dart';



@singleton
class DioApiResponseHandle {
  Future<Either<ApiFailure, d.Response>> handleDioResponse(
      Future<d.Response> future) async {
    try {
      final d.Response res = await future;
      return right(res);
    } on FormatException catch (e, s) {
      return left(ApiFailure(
          title: "Format Exception",
          path: "",
          errorMessage: "Api format is incorrect",
          isLethal: true));
    } on d.DioException catch (e, s) {
      if (e.type == d.DioExceptionType.connectionTimeout) {
        return left(ApiFailure(
            title: "Server Offline.",
            path: "",
            statusCode: e.response?.statusCode ?? null,
            response: e.response,
            errorMessage:
                "We are doing maintenance.Please Try Again few minute Later",
            apiAction: API_ACTIONS.RETRY,
            isLethal: true));
      } else if (e.type == d.DioExceptionType.unknown) {
        return left(ApiFailure(
            title: "Server Offline.",
            path: "",
            statusCode: e.response?.statusCode ?? null,
            response: e.response,
            errorMessage: "Server might be offline.Due to Unknown Error",
            isLethal: true));
      } else {
        if (e.response!.statusCode == 404) {
          return left(ApiFailure(
              title: "Api route not found",
              path: "",
              statusCode: e.response?.statusCode ?? null,
              response: e.response,
              errorMessage: "Route not defined"));
        } else if (e.response!.statusCode == 403) {
          return left(ApiFailure(
              title: "Authentication error",
              path: "",
              apiAction: API_ACTIONS.LOGOUT,
              errorMessage: "You token might be expire please login again"));
        } else if (e.response!.statusCode == 400 ||
            e.response!.statusCode == 401 ||
            e.response!.statusCode == 403) {
          return left(ApiFailure(
              title: "Error",
              path: "",
              statusCode: e.response?.statusCode ?? null,
              response: e.response,
              errorMessage:
                  ApiErrorResponse.fromJson(e.response?.data).message));
        } else if ((e.response?.statusCode ?? 0) > 500) {
          return left(ApiFailure(
              title: "Server Error",
              path: "",
              apiAction: API_ACTIONS.LOGOUT,
              errorMessage: "Server might be offline.Due to Unknown Error"));
        } else {
          return left(ApiFailure(
              statusCode: e.response?.statusCode ?? null,
              response: e.response,
              title: "Error",
              path: "",
              errorMessage: e.message ?? "Something went wrong"));
        }
      }
    } on Exception catch (e, s) {
      return left(ApiFailure(
          title: "Anomious Error",
          path: "",
          errorMessage: "Api format is incorrect"));
    }
  }
}
