import 'package:nivelamento_lumatec/app/modules/autenticacao/model/usuario_model.dart';
import 'package:nivelamento_lumatec/core/enum/localdata_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Funcoes {
  static void setDadosUsuarios(UsuarioModel usuario) {
    setLocalData("dadosUsuario", usuario.toJson(), LocalDataEnum.string);
  }

  static Future<UsuarioModel> getDadosUsuarios() async {
    var usuario = await getLocalData("dadosUsuario", LocalDataEnum.string);
    UsuarioModel usuarioModel = new UsuarioModel.fromJson(usuario);
    return usuarioModel;
  }

  static Future<void> setLocalData(
      String key, dynamic valor, LocalDataEnum tipo) async {
    final prefs = await SharedPreferences.getInstance();
    if (tipo == LocalDataEnum.string) {
      prefs.setString(key, valor);
    }
    if (tipo == LocalDataEnum.int) {
      prefs.setInt(key, valor);
    }
    if (tipo == LocalDataEnum.bool) {
      prefs.setBool(key, valor);
    }
    if (tipo == LocalDataEnum.double) {
      prefs.setDouble(key, valor);
    }
  }

  static Future<dynamic> getLocalData(String key, LocalDataEnum tipo) async {
    final prefs = await SharedPreferences.getInstance();
    if (tipo == LocalDataEnum.string) {
      return prefs.getString(key);
    }
    if (tipo == LocalDataEnum.int) {
      return prefs.getInt(key);
    }
    if (tipo == LocalDataEnum.bool) {
      return prefs.getBool(key);
    }
    if (tipo == LocalDataEnum.double) {
      return prefs.getDouble(key);
    }
  }
}
