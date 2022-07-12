import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/autenticacao/autenticacao_module.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:nivelamento_lumatec/core/repository/repository_http.dart';



class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<RepositoryBasico>((i) => RepositoryHttp())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AutenticacaoModule()),
  ];

}