import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/cadastro_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/login_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/model/login_model.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/model/usuario_model.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/service/autenticacao_service.dart';
import 'package:nivelamento_lumatec/core/funcoes.dart';
import 'package:nivelamento_lumatec/core/model/resposta_service_model.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico_impl.dart';

class AutenticacaoServiceImpl implements AutenticacaoService {
  RepositoryBasico repository = Modular.get();

  @override
  Future<RespostaService> cadastrar(CadastroUsuarioDTO dados) async {
    UsuarioModel usuario = new UsuarioModel(name: dados.nome, email: dados.usuario, password: dados.senha);
    var retorno = await repository.post(dotenv.env['BASEURL']! + "users", usuario.toMap());
    if (retorno.statusCode == 200 || retorno.statusCode == 201) {
      if(retorno.body.containsKey('erros')){
        return RespostaService(sucesso: false, msg: retorno.body['erros']['email'][0]);
      }     
      UsuarioModel usuarioSalvar = new UsuarioModel(name: retorno.body['name'], email: retorno.body['email'], token: retorno.body['token']);
      Funcoes.setDadosUsuarios(usuarioSalvar);
      return RespostaService(sucesso: true, msg: "Cadastro Realizado com sucesso");;       
    } else {
      return RespostaService(sucesso: false, msg: "Erro interno no servidor");
    }
  }

  @override
  bool realizarLogin(LoginDTO login) {
    LoginModel loginModel = new LoginModel(login: login.login, password: login.senha);
    var retorno = repository.post(dotenv.env['BASEURL']! + "login", loginModel.toMap());
    if (retorno.statusCode == 200) {
      Funcoes.setDadosUsuarios(UsuarioModel.fromJson(retorno.body));
      return true;
    } else {
      return false;
    }
  }
}
