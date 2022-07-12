import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/autenticacao/page/cadastro_page.dart';
import 'package:nivelamento_lumatec/app/autenticacao/page/login_page.dart';
import 'package:nivelamento_lumatec/app/autenticacao/service/autenticacao_service.dart';
import 'package:nivelamento_lumatec/app/autenticacao/service/autenticacao_service_impl.dart';
import 'package:nivelamento_lumatec/app/autenticacao/store/autenticacao_store.dart';

class AutenticacaoModule extends Module {

   @override
   final List<Bind> binds = [
    Bind.singleton<AutenticacaoStore>((i) => new AutenticacaoStore()),
    Bind.singleton<AutenticacaoService>((i) => new AutenticacaoServiceImpl())
   ];

   @override
   final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute , child: (context, args) => LoginPage()),
    ChildRoute("/cadastrar", child: (context, args) => CadastroPage() ),
   ];

}