import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/dto/usuario_completo_dto.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/model/usuario_completo_model.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/service/cadastro_completo_service.dart';
import 'package:nivelamento_lumatec/core/model/resposta_service_model.dart';

import '../../../../core/repository/repository_basico.dart';

class CadastroCompletoServiceImpl implements CadastroCompletoService {
  RepositoryBasico repository = Modular.get();

  @override
  Future<RespostaService> cadastrar(UsuarioCompletoDTO dados) async {
    UsuarioCompletoModel usuarioCompleto = new UsuarioCompletoModel(
      nome: dados.nome,
      id: dados.id,
      cidade: dados.cidade,
      email: dados.email,
      estado: dados.estado,
      numero: dados.numero,
      rua: dados.rua,
      telefone: dados.telefone,
      token: dados.token,
    );
    var retorno = repository.put(
        dotenv.env['BASEURL']! + "users/${dados.id}", usuarioCompleto.toMap());
    if (retorno.statusCode == 200 || retorno.statusCode == 201) {
      if (retorno.body.containsKey('erros')) {
        return RespostaService(
            sucesso: false, msg: retorno.body['erros']['email'][0]);
      }

      return RespostaService(
          sucesso: true, msg: "Cadastro Realizado com sucesso");
    } else {
      return RespostaService(sucesso: false, msg: "Erro interno no servidor");
    }
  }
}
