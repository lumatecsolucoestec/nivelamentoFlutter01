import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:nivelamento_lumatec/app/autenticacao/dto/cadastro_dto.dart';
import 'package:nivelamento_lumatec/app/autenticacao/service/autenticacao_service.dart';
import 'package:nivelamento_lumatec/core/model/servico_model.dart';
part 'autenticacao_store.g.dart';

class AutenticacaoStore = _AutenticacaoStoreBase with _$AutenticacaoStore;

abstract class _AutenticacaoStoreBase with Store {
  TextEditingController txtSenha = TextEditingController();
  TextEditingController txtRepitaSenha = TextEditingController();
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtNome = TextEditingController();
  AutenticacaoService service = Modular.get();

  @action
  Future<void> cadastrar() async {
    CadastroUsuarioDTO dadosCadastro = CadastroUsuarioDTO(
      nome: txtNome.text,
      usuario: txtUsuario.text,
      senha: txtSenha.text,
      repitaSenha: txtRepitaSenha.text,
    );
    RespostaServicoModel retornoAPI = await service.cadastro(dadosCadastro);
    if(retornoAPI.status){
      print("Cadastro Realizado");
    }else{
      print("Ocorreu um erro");
    }    
  }
}
