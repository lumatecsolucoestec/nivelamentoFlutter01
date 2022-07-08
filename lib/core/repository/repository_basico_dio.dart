import 'package:dio/dio.dart';
import 'package:http/src/response.dart';
import 'package:nivelamento_lumatec/core/repository/repository_basico.dart';
import 'package:nivelamento_lumatec/core/model/retorno_model.dart';

class RepositoryBasicoDIO implements RepositoryBasico {
  @override
  get(String url) async {
    var response = await Dio().get(url);
    return RetornoAPI(statusCode: response.statusCode!, body: response.data);
  }

  @override
  post(String url, Map body) async {
    var response = await Dio().post(url, data: body);
    return RetornoAPI(statusCode: response.statusCode!, body: response.data);
  }

  @override
  put(String url, Map body) async {
    var response = await Dio().put(url, data: body);
    return RetornoAPI(statusCode: response.statusCode!, body: response.data);
  }
}
