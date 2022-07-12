import 'dart:convert';

import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:http/http.dart' as http;
import 'package:nivelamento_lumatec/core/repository/repository_model.dart';

class RepositoryHttp implements RepositoryBasico{
  @override
  Future<RepositoryModel> get(String url) async {
    Uri uri = Uri.parse(url);
   var resposta = await http.get(uri);
   return RepositoryModel(
    statusCode: resposta.statusCode,
    body: jsonDecode(resposta.body)
   );
  }

  @override
  Future<RepositoryModel> post(String url, Map body) async {
     Uri uri = Uri.parse(url);
   var resposta = await http.post(uri, body: body);
    return RepositoryModel(
    statusCode: resposta.statusCode,
    body: jsonDecode(resposta.body)
   );
  
  }

  @override
  Future<RepositoryModel> put(String url, Map body) async {
    Uri uri = Uri.parse(url);
   var resposta = await http.put(uri, body: body);  
    return RepositoryModel(
    statusCode: resposta.statusCode,
    body: jsonDecode(resposta.body)
   );
  }

}