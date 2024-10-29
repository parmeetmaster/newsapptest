
import 'package:company_test/data_sources/services/network/api/dio_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class StorageModule{

  @preResolve
  Future<SharedPreferences> get firebaseApp async => SharedPreferences.getInstance();

}