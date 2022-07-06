import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/cadastro_dto.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/dto/login_dto.dart';

abstract class AutenticacaoService {
  bool cadastrar(CadastroUsuarioDTO dados);
  bool realizarLogin(LoginDTO login);
}
