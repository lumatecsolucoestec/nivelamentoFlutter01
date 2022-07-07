import 'package:flutter/cupertino.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/model/usuario_model.dart';
import 'package:nivelamento_lumatec/core/enum/localdata_enum.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Funcoes {
  static void alertSuccess(String msg, BuildContext context) {
    alert(msg, context, AlertType.success);
  }

  static void alertError(String msg, BuildContext context) {
    alert(msg, context, AlertType.error);
  }

  static void alert(String msg, BuildContext context, AlertType alertType) {
    Alert(
      context: context,
      type: alertType,
      title: msg,
    ).show();
  }

  static void setDadosUsuarios(UsuarioModel? usuario) {
    if (usuario == null) {
      setLocalData("dadosUsuario", null, LocalDataEnum.string);
    } else {
      setLocalData("dadosUsuario", usuario.toJson(), LocalDataEnum.string);
    }
  }

  static Future<UsuarioModel?> getDadosUsuarios() async {
    var usuario = await getLocalData("dadosUsuario", LocalDataEnum.string);
    if (usuario == null) return null;
    UsuarioModel usuarioModel = new UsuarioModel.fromJson(usuario);
    return usuarioModel;
  }

  static Future<void> setLocalData(String key, dynamic valor, LocalDataEnum tipo) async {
    final prefs = await SharedPreferences.getInstance();
    if(valor == null){
      prefs.remove(key);
      return;
    }
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
