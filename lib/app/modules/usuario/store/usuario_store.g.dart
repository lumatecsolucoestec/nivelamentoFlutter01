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

  @override
  String toString() {
    return '''
administrador: ${administrador},
suporte: ${suporte},
revenda: ${revenda},
radioValue: ${radioValue}
    ''';
  }
}
