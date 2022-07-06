import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:http/http.dart' as http;

class RepositoryBasicoImpl implements RepositoryBasico {
  @override
  get(String url) async {
    var resposta = await http.get(Uri.parse(url));
    return resposta;
  }

  @override
  post(String url, Map body) async {
    var resposta = await http.post(Uri.parse(url), body: body);
    return resposta;
  }
}
