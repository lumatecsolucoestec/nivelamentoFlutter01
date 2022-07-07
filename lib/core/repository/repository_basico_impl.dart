import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:http/http.dart' as http;
import 'package:nivelamento_lumatec/core/model/retorno_model.dart';

class RepositoryBasicoImpl implements RepositoryBasico {
  @override
  get(String url) async {
    var resposta = await http.get(Uri.parse(url));
    return RetornoAPI(statusCode: resposta.statusCode, body: resposta.body);
  }

  @override
  post(String url, Map body) async {
    var resposta = await http.post(Uri.parse(url), body: body);
   return RetornoAPI(statusCode: resposta.statusCode, body: resposta.body);
  }
}
