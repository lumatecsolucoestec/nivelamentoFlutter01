import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/pages/login_page.dart';

class AutenticacaoModule extends Module {

   @override
   final List<Bind> binds = [];

   @override
   final List<ModularRoute> routes = [
      ChildRoute('/', child: (_, args) => LoginPage()),
   ];

}