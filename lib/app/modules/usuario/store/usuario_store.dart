import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/dto/usuario_completo_dto.dart';
import 'package:nivelamento_lumatec/core/funcoes.dart';

import '../../../../core/model/resposta_service_model.dart';
import '../service/cadastro_completo_service.dart';
part 'usuario_store.g.dart';

class UsuarioStore = _UsuarioStoreBase with _$UsuarioStore;

abstract class _UsuarioStoreBase with Store {
  CadastroCompletoService service = Modular.get();

  late BuildContext buildContext;

  @observable
  bool? administrador = false;

  @observable
  bool? suporte = false;

  @observable
  bool? revenda = false;

  @observable
  Object? radioValue = 1;

  @observable
  TextEditingController nome = TextEditingController();

  @observable
  TextEditingController email = TextEditingController();

  @observable
  TextEditingController telefone = TextEditingController();

  @observable
  TextEditingController rua = TextEditingController();

  @observable
  TextEditingController numero = TextEditingController();

  @observable
  TextEditingController estado = TextEditingController();

  @observable
  TextEditingController cidade = TextEditingController();

  @observable
  TextEditingController usuario = TextEditingController();

  @observable
  TextEditingController senha = TextEditingController();

  @action
  Future<void> cadastroCompleto() async {
    UsuarioCompletoDTO cadastro = new UsuarioCompletoDTO(
      nome: nome.text,
      email: email.text,
      cidade: cidade.text,
      estado: estado.text,
      telefone: telefone.text,
      rua: rua.text,
      numero: numero.text,
    );
    RespostaService realizarCadastro = await service.cadastrar(cadastro);
    if (realizarCadastro.sucesso) {
      Funcoes.alertSuccess(realizarCadastro.msg, buildContext);
    } else {
      Funcoes.alertError(realizarCadastro.msg, buildContext);
    }
  }
}
