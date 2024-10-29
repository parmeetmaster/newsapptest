import 'package:company_test/core/enums.dart';
import 'package:injectable/injectable.dart';


@singleton
class EnviormentService {
  late EnviormentEnum _curruntEnv;

  EnviormentEnum get curruntEnviorment => _curruntEnv;

  set setEnviorment(EnviormentEnum name) {
    _curruntEnv = name;
  }


}
