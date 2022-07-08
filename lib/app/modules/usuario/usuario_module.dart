import 'package:flutter_modular/flutter_modular.dart';

import 'pages/cadastro_usuario_page.dart';
import 'store/usuario_store.dart';

class UsuarioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<UsuarioStore>((i) => UsuarioStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CadastroUsuario()),
  ];
}
