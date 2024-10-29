import 'package:company_test/data_sources/services/core/enviorment_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../core/enums.dart';
import 'inject.config.dart';

final getIt = GetIt.instance;

//remove enviorment if ads not working
@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
configureDependencies(EnviormentEnum env) async {
  await $initGetIt(getIt);
  getIt<EnviormentService>().setEnviorment = env;
}
