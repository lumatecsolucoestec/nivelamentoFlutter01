import 'package:mobx/mobx.dart';
part 'usuario_store.g.dart';

class UsuarioStore = _UsuarioStoreBase with _$UsuarioStore;

abstract class _UsuarioStoreBase with Store {
  @observable
  bool? administrador = false;

  @observable
  bool? suporte = false;

  @observable
  bool? revenda = false;

  @observable
  Object? radioValue = 1;
}
