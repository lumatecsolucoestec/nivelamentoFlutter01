import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/model/usuario_model.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/pages/cadastro_page.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/pages/login_page.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/service/autenticacao_service.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/service/autenticacao_service_impl.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/store/autenticacao_store.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/usuario_module.dart';

class AutenticacaoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<AutenticacaoService>((i) => AutenticacaoServiceImpl()),
    Bind.singleton<AutenticacaoStore>((i) => AutenticacaoStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
    ChildRoute('/cadastro', child: (_, args) => CadastroPage()),
    ModuleRoute('/usuario/', module: UsuarioModule()),
  ];
}
