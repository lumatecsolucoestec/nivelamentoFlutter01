// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autenticacao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AutenticacaoStore on _AutenticacaoStoreBase, Store {
  late final _$logadoAtom =
      Atom(name: '_AutenticacaoStoreBase.logado', context: context);

  @override
  bool get logado {
    _$logadoAtom.reportRead();
    return super.logado;
  }

  @override
  set logado(bool value) {
    _$logadoAtom.reportWrite(value, super.logado, () {
      super.logado = value;
    });
  }

  late final _$formularioAsyncAction =
      AsyncAction('_AutenticacaoStoreBase.formulario', context: context);

  @override
  Future<void> formulario() {
    return _$formularioAsyncAction.run(() => super.formulario());
  }

  late final _$loginAsyncAction =
      AsyncAction('_AutenticacaoStoreBase.login', context: context);

  @override
  Future<void> login(String usuario, String senha) {
    return _$loginAsyncAction.run(() => super.login(usuario, senha));
  }

  late final _$cadastroAsyncAction =
      AsyncAction('_AutenticacaoStoreBase.cadastro', context: context);

  @override
  Future<void> cadastro() {
    return _$cadastroAsyncAction.run(() => super.cadastro());
  }

  late final _$verficarLoginAsyncAction =
      AsyncAction('_AutenticacaoStoreBase.verficarLogin', context: context);

  @override
  Future<void> verficarLogin() {
    return _$verficarLoginAsyncAction.run(() => super.verficarLogin());
  }

  late final _$_AutenticacaoStoreBaseActionController =
      ActionController(name: '_AutenticacaoStoreBase', context: context);

  @override
  void sair() {
    final _$actionInfo = _$_AutenticacaoStoreBaseActionController.startAction(
        name: '_AutenticacaoStoreBase.sair');
    try {
      return super.sair();
    } finally {
      _$_AutenticacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
logado: ${logado}
    ''';
  }
}
