import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/cadastro_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/login_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/model/login_model.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/model/usuario_model.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/service/autenticacao_service.dart';
import 'package:nivelamento_lumatec/core/funcoes.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico_impl.dart';

class AutenticacaoServiceImpl implements AutenticacaoService {
  RepositoryBasico repository = Modular.get();

  @override
  bool cadastrar(CadastroUsuarioDTO dados) {
    UsuarioModel usuario = new UsuarioModel(
        nome: dados.nome, usuario: dados.usuario, password: dados.senha);
    var retorno =
        repository.post(dotenv.env['BASEURL']! + "cadastro", usuario.toMap());
    if (retorno.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  @override
  bool realizarLogin(LoginDTO login) {
    LoginModel loginModel =
        new LoginModel(login: login.login, password: login.senha);
    var retorno =
        repository.post(dotenv.env['BASEURL']! + "login", loginModel.toMap());
    if (retorno.statusCode == 200) {
      Funcoes.setDadosUsuarios(UsuarioModel.fromJson(retorno.body));
      return true;
    } else {
      return false;
    }
  }
}
