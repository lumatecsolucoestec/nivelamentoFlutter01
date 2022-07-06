// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UsuarioModel {
  int? id;
  String? nome;
  String? usuario;
  String? token;
  String? password;
  UsuarioModel({
    this.id,
    this.nome,
    this.usuario,
    this.token,
    this.password,
  });

  UsuarioModel copyWith({
    int? id,
    String? nome,
    String? usuario,
    String? token,
    String? password,
  }) {
    return UsuarioModel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      usuario: usuario ?? this.usuario,
      token: token ?? this.token,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'usuario': usuario,
      'token': token,
      'password': password,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      id: map['id'] != null ? map['id'] as int : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      usuario: map['usuario'] != null ? map['usuario'] as String : null,
      token: map['token'] != null ? map['token'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioModel(id: $id, nome: $nome, usuario: $usuario, token: $token, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UsuarioModel &&
        other.id == id &&
        other.nome == nome &&
        other.usuario == usuario &&
        other.token == token &&
        other.password == password;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        usuario.hashCode ^
        token.hashCode ^
        password.hashCode;
  }
}
