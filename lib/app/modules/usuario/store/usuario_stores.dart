import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'usuario_stores.g.dart';

class UsuarioStores = UsuarioStoresBase with _$UsuarioStores;

abstract class UsuarioStoresBase with Store {
  TextEditingController nome = TextEditingController();
}
