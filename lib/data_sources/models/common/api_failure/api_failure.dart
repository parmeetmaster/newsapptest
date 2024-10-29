import 'package:dio/dio.dart';

enum API_ACTIONS { LOGOUT, DO_NOTHING, RETRY }

class ApiFailure {
  String path;
  String errorMessage;
  String title;
  Response? response;
  int? statusCode;
  bool isLethal;
  API_ACTIONS apiAction;

  ApiFailure(
      {required this.path,
      required this.title,
      this.apiAction = API_ACTIONS.DO_NOTHING,
      this.response = null,
      this.statusCode = null,
      required this.errorMessage,
      this.isLethal = false});
}
