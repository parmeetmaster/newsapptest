// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../controller/description/description_controller.dart' as _i624;
import '../controller/home/home_screen_controller.dart' as _i884;
import '../data_sources/modules/local/storage_module.dart' as _i984;
import '../data_sources/modules/network/api_module.dart' as _i698;
import '../data_sources/repo/network/home_repo/i_home_repo.dart' as _i954;
import '../data_sources/repo/network/home_repo/prod_home_repo.dart' as _i551;
import '../data_sources/services/audio/text_to_speech_service.dart' as _i290;
import '../data_sources/services/core/enviorment_service.dart' as _i416;
import '../data_sources/services/native/native_service.dart' as _i432;
import '../data_sources/services/network/api/dio_api_error_handler.dart'
    as _i975;
import '../data_sources/services/network/api/dio_api_failure_action.dart'
    as _i549;
import '../data_sources/services/network/api/dio_service.dart' as _i847;
import '../data_sources/services/network/connectivity_service/connectivity_service.dart'
    as _i81;
import '../data_sources/services/ui_service/toast_service.dart' as _i707;
import '../data_sources/services/ui_service/ui_service.dart' as _i997;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final storageModule = _$StorageModule();
  final apiModule = _$ApiModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => storageModule.firebaseApp,
    preResolve: true,
  );
  gh.singleton<_i290.TextToSpeechService>(() => _i290.TextToSpeechService());
  gh.singleton<_i416.EnviormentService>(() => _i416.EnviormentService());
  await gh.singletonAsync<_i432.NativeService>(
    () {
      final i = _i432.NativeService();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i975.DioApiResponseHandle>(() => _i975.DioApiResponseHandle());
  gh.singleton<_i81.ConnectivityService>(() => _i81.ConnectivityService());
  gh.singleton<_i997.UrlService>(() => _i997.UrlService());
  gh.lazySingleton<_i847.DioService>(() => apiModule.newApi);
  gh.lazySingleton<_i549.DioApiFailureActionService>(
      () => _i549.DioApiFailureActionService());
  gh.lazySingleton<_i707.ToastService>(() => _i707.ToastService());
  gh.factory<_i624.DescriptionController>(
      () => _i624.DescriptionController(gh<_i290.TextToSpeechService>()));
  gh.lazySingleton<_i954.IHomeRepo>(() => _i551.ProdHomeRepo(
        gh<_i847.DioService>(),
        gh<_i975.DioApiResponseHandle>(),
      ));
  gh.factory<_i884.HomeScreenController>(() => _i884.HomeScreenController(
        gh<_i997.UrlService>(),
        gh<_i81.ConnectivityService>(),
        gh<_i290.TextToSpeechService>(),
        gh<_i954.IHomeRepo>(),
      )..init());
  return getIt;
}

class _$StorageModule extends _i984.StorageModule {}

class _$ApiModule extends _i698.ApiModule {}
