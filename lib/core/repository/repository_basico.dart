import 'package:nivelamento_lumatec/core/repository/repository_model.dart';

abstract class RepositoryBasico {
  Future<RepositoryModel> get(String url);
  Future<RepositoryModel> post(String url, Map body);
  Future<RepositoryModel> put(String url, Map body);
}

