import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/autenticacao_module.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AutenticacaoModule()),
  ];

}