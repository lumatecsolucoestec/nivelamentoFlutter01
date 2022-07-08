// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UsuarioStore on _UsuarioStoreBase, Store {
  late final _$administradorAtom =
      Atom(name: '_UsuarioStoreBase.administrador', context: context);

  @override
  bool? get administrador {
    _$administradorAtom.reportRead();
    return super.administrador;
  }

  @override
  set administrador(bool? value) {
    _$administradorAtom.reportWrite(value, super.administrador, () {
      super.administrador = value;
    });
  }

  late final _$suporteAtom =
      Atom(name: '_UsuarioStoreBase.suporte', context: context);

  @override
  bool? get suporte {
    _$suporteAtom.reportRead();
    return super.suporte;
  }

  @override
  set suporte(bool? value) {
    _$suporteAtom.reportWrite(value, super.suporte, () {
      super.suporte = value;
    });
  }

  late final _$revendaAtom =
      Atom(name: '_UsuarioStoreBase.revenda', context: context);

  @override
  bool? get revenda {
    _$revendaAtom.reportRead();
    return super.revenda;
  }

  @override
  set revenda(bool? value) {
    _$revendaAtom.reportWrite(value, super.revenda, () {
      super.revenda = value;
    });
  }

  late final _$radioValueAtom =
      Atom(name: '_UsuarioStoreBase.radioValue', context: context);

  @override
  Object? get radioValue {
    _$radioValueAtom.reportRead();
    return super.radioValue;
  }

  @override
  set radioValue(Object? value) {
    _$radioValueAtom.reportWrite(value, super.radioValue, () {
      super.radioValue = value;
    });
  }

  late final _$nomeAtom =
      Atom(name: '_UsuarioStoreBase.nome', context: context);

  @override
  TextEditingController get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(TextEditingController value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_UsuarioStoreBase.email', context: context);

  @override
  TextEditingController get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(TextEditingController value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$telefoneAtom =
      Atom(name: '_UsuarioStoreBase.telefone', context: context);

  @override
  TextEditingController get telefone {
    _$telefoneAtom.reportRead();
    return super.telefone;
  }

  @override
  set telefone(TextEditingController value) {
    _$telefoneAtom.reportWrite(value, super.telefone, () {
      super.telefone = value;
    });
  }

  late final _$ruaAtom = Atom(name: '_UsuarioStoreBase.rua', context: context);

  @override
  TextEditingController get rua {
    _$ruaAtom.reportRead();
    return super.rua;
  }

  @override
  set rua(TextEditingController value) {
    _$ruaAtom.reportWrite(value, super.rua, () {
      super.rua = value;
    });
  }

  late final _$numeroAtom =
      Atom(name: '_UsuarioStoreBase.numero', context: context);

  @override
  TextEditingController get numero {
    _$numeroAtom.reportRead();
    return super.numero;
  }

  @override
  set numero(TextEditingController value) {
    _$numeroAtom.reportWrite(value, super.numero, () {
      super.numero = value;
    });
  }

  late final _$estadoAtom =
      Atom(name: '_UsuarioStoreBase.estado', context: context);

  @override
  TextEditingController get estado {
    _$estadoAtom.reportRead();
    return super.estado;
  }

  @override
  set estado(TextEditingController value) {
    _$estadoAtom.reportWrite(value, super.estado, () {
      super.estado = value;
    });
  }

  late final _$cidadeAtom =
      Atom(name: '_UsuarioStoreBase.cidade', context: context);

  @override
  TextEditingController get cidade {
    _$cidadeAtom.reportRead();
    return super.cidade;
  }

  @override
  set cidade(TextEditingController value) {
    _$cidadeAtom.reportWrite(value, super.cidade, () {
      super.cidade = value;
    });
  }

  late final _$usuarioAtom =
      Atom(name: '_UsuarioStoreBase.usuario', context: context);

  @override
  TextEditingController get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(TextEditingController value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  late final _$senhaAtom =
      Atom(name: '_UsuarioStoreBase.senha', context: context);

  @override
  TextEditingController get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(TextEditingController value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$cadastroCompletoAsyncAction =
      AsyncAction('_UsuarioStoreBase.cadastroCompleto', context: context);

  @override
  Future<void> cadastroCompleto() {
    return _$cadastroCompletoAsyncAction.run(() => super.cadastroCompleto());
  }

  @override
  String toString() {
    return '''
administrador: ${administrador},
suporte: ${suporte},
revenda: ${revenda},
radioValue: ${radioValue},
nome: ${nome},
email: ${email},
telefone: ${telefone},
rua: ${rua},
numero: ${numero},
estado: ${estado},
cidade: ${cidade},
usuario: ${usuario},
senha: ${senha}
    ''';
  }
}
