import 'package:nivelamento_lumatec/app/autenticacao/dto/cadastro_dto.dart';
import 'package:nivelamento_lumatec/core/model/servico_model.dart';

abstract class AutenticacaoService {

  Future<RespostaServicoModel> cadastro(CadastroUsuarioDTO dados) ;

  bool logar();

}