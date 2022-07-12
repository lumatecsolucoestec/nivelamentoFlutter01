import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:dio/dio.dart';
import 'package:nivelamento_lumatec/core/repository/repository_model.dart';

class RepositoryDio implements RepositoryBasico{
  @override
  Future<RepositoryModel> get(String url) async {
    var resposta = await Dio().get(url);
    return RepositoryModel(
    statusCode: resposta.statusCode!,
    body: resposta.data
   );

  }

  @override
  Future<RepositoryModel> post(String url, Map body) async {
   var resposta =  await Dio().post(url, data: body);
   return RepositoryModel(
    statusCode: resposta.statusCode!,
    body: resposta.data
   );
  }

  @override
  Future<RepositoryModel> put(String url, Map body) async {
   var resposta =  await Dio().put(url, data: body);
   return RepositoryModel(
    statusCode: resposta.statusCode!,
    body: resposta.data
   );
  }

}