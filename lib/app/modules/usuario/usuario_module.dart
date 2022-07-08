import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/pages/lista_usuarios_page.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/service/cadastro_completo_service_impl.dart';

import 'pages/cadastro_usuario_page.dart';
import 'service/cadastro_completo_service.dart';
import 'service/cadastro_completo_service_impl.dart';
import 'store/usuario_store.dart';

class UsuarioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<UsuarioStore>((i) => UsuarioStore()),
    Bind.singleton<CadastroCompletoService>(
        (i) => CadastroCompletoServiceImpl()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CadastroUsuario()),
    ChildRoute('/lista_usuarios', child: (_, args) => ListaUsuarios()),
  ];
}
