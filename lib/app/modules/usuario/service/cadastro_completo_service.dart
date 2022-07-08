import '../../../../core/model/resposta_service_model.dart';
import '../dto/usuario_completo_dto.dart';

abstract class CadastroCompletoService {
  Future<RespostaService> cadastrar(UsuarioCompletoDTO dados);
}
