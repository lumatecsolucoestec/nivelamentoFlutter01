import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/cadastro_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/login_dto.dart';
import 'package:nivelamento_lumatec/core/model/resposta_service_model.dart';

abstract class AutenticacaoService {
  Future<RespostaService> cadastrar(CadastroUsuarioDTO dados);
  bool realizarLogin(LoginDTO login);
}
