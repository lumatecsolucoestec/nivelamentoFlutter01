import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/login_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/service/autenticacao_service.dart';
part 'autenticacao_store.g.dart';

class AutenticacaoStore = _AutenticacaoStoreBase with _$AutenticacaoStore;

abstract class _AutenticacaoStoreBase with Store {
  AutenticacaoService service = Modular.get();

  Future<void> login(String usuario, String senha) async {
    LoginDTO login = new LoginDTO(login: usuario, senha: senha);
    bool realizandoLogin = await service.realizarLogin(login);
    if (realizandoLogin) {
      print("Login realizado");
    } else {
      print("Erro");
    }
  }
}
