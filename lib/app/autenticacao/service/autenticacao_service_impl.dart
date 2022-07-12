import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/autenticacao/dto/cadastro_dto.dart';
import 'package:nivelamento_lumatec/app/autenticacao/model/usuario_model.dart';
import 'package:nivelamento_lumatec/app/autenticacao/service/autenticacao_service.dart';
import 'package:nivelamento_lumatec/core/model/servico_model.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nivelamento_lumatec/core/repository/repository_model.dart';


class AutenticacaoServiceImpl implements AutenticacaoService{

  RepositoryBasico repository = Modular.get();

  @override
  Future<RespostaServicoModel> cadastro(CadastroUsuarioDTO dados) async { 
    UsuarioModel user = new UsuarioModel(email: dados.usuario, username: dados.usuario, password: dados.senha, name: dados.nome);
    RepositoryModel resposta = await repository.post(dotenv.env['BASEURL']!+"users", user.toMap());
    if(resposta.statusCode >= 200 && resposta.statusCode <= 299)
      return RespostaServicoModel(mensagem: "", status: true);  
      

    return RespostaServicoModel(mensagem: "Erro não foi possivel cadastrar", status: false);
        
  }

  @override
  bool logar() {
    // TODO: implement logar
    throw UnimplementedError();
  }

}