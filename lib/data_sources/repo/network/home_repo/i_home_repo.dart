

import 'package:company_test/data_sources/models/common/api_failure/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class IHomeRepo{

  Future<Either<ApiFailure, Response>> fetchHomeNews({required int pageIndex});

}