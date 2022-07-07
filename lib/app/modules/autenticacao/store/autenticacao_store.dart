import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/cadastro_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/login_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/model/usuario_model.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/service/autenticacao_service.dart';
import 'package:nivelamento_lumatec/core/funcoes.dart';
import 'package:nivelamento_lumatec/core/model/resposta_service_model.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
part 'autenticacao_store.g.dart';

class AutenticacaoStore = _AutenticacaoStoreBase with _$AutenticacaoStore;

abstract class _AutenticacaoStoreBase with Store {
  AutenticacaoService service = Modular.get();

  late BuildContext buildContext;

  TextEditingController txtSenha = TextEditingController();
  TextEditingController txtRepitaSuaSenha = TextEditingController();
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtUsuario = TextEditingController();

  @observable
  bool logado = false;

  @action
  Future<void> formulario() async {
    txtSenha.text = "";
    txtRepitaSuaSenha.text = "";
    if (logado) {
      UsuarioModel? usuario = await Funcoes.getDadosUsuarios();
      txtNome.text = usuario!.name!;
      txtUsuario.text = usuario.email!;
    } else {
      txtNome.text = "";
      txtUsuario.text = "";
    }
  }

  @action
  Future<void> login(String usuario, String senha) async {
    LoginDTO login = new LoginDTO(login: usuario, senha: senha);
    bool realizandoLogin = await service.realizarLogin(login);
    if (realizandoLogin) {
      Funcoes.alertSuccess("Cadastro Realizado com sucesso!", buildContext);
    } else {
      print("Erro");
    }
  }

  @action
  Future<void> cadastro() async {
    CadastroUsuarioDTO cadastro = new CadastroUsuarioDTO(nome: txtNome.text, usuario: txtUsuario.text, senha: txtSenha.text);
    RespostaService realizarCadastro = await service.cadastrar(cadastro);
    if (realizarCadastro.sucesso) {
      Funcoes.alertSuccess(realizarCadastro.msg, buildContext);
    } else {
      Funcoes.alertError(realizarCadastro.msg, buildContext);
    }
  }

  @action
  Future<void> verficarLogin() async {
    var usuario = await Funcoes.getDadosUsuarios();
    if (usuario == null)
      logado = false;
    else
      logado = true;
  }

  @action
  void sair() {
    Funcoes.setDadosUsuarios(null);
    logado = false;
  }
}
