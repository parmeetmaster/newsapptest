
import 'package:company_test/data_sources/models/common/api_failure/api_failure.dart';
import 'package:company_test/data_sources/services/ui_service/toast_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class DioApiFailureActionService {
  void takeAction(ApiFailure failure, {BuildContext? context}) {
    if (failure.apiAction == API_ACTIONS.LOGOUT) {
      // getIt<AppRouter>().popAndPush(WebLoginRoute());
    } else {
      getIt<ToastService>().showRoundedFlushBar("Error", failure.errorMessage);
    }
  }
}
