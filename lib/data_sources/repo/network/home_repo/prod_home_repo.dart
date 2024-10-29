import 'package:company_test/data_sources/models/common/api_failure/api_failure.dart';
import 'package:company_test/data_sources/repo/network/home_repo/i_home_repo.dart';
import 'package:company_test/data_sources/services/network/api/dio_api_error_handler.dart';
import 'package:company_test/data_sources/services/network/api/dio_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/src/response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeRepo)
class ProdHomeRepo implements IHomeRepo {
  DioService _dioService;
  DioApiResponseHandle _dioApiResponseHandle;

  ProdHomeRepo(this._dioService, this._dioApiResponseHandle);

  @override
  Future<Either<ApiFailure, Response>> fetchHomeNews({required int pageIndex}) async {
    return _dioApiResponseHandle
        .handleDioResponse(_dioService.get(path: "/v2/top-headlines?country=us", queryParms: {"page":pageIndex}));
  }
}
