import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/autenticacao_module.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/usuario_module.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico_dio.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<RepositoryBasico>((i) => RepositoryBasicoDIO())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AutenticacaoModule()),
    ModuleRoute("/usuario", module: UsuarioModule()),
  ];
}
