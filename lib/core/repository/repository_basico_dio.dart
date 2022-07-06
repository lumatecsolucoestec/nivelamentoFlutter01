import 'package:dio/dio.dart';
import 'package:http/src/response.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';

class RepositoryBasicoDIO implements RepositoryBasico {
  @override
  get(String url) async {
    var response = await Dio().get(url);
    return response;
  }

  @override
  post(String url, Map body) async {
    var response = await Dio().post(url, data: body);
    return response;
  }
}
