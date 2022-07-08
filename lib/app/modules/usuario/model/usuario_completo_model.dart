// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UsuarioCompletoModel {
  int? id;
  String? token;
  String? nome;
  String? email;
  String? telefone;
  String? rua;
  String? numero;
  String? estado;
  String? cidade;
  UsuarioCompletoModel({
    this.id,
    this.token,
    this.nome,
    this.email,
    this.telefone,
    this.rua,
    this.numero,
    this.estado,
    this.cidade,
  });

  UsuarioCompletoModel copyWith({
    int? id,
    String? token,
    String? nome,
    String? email,
    String? telefone,
    String? rua,
    String? numero,
    String? estado,
    String? cidade,
  }) {
    return UsuarioCompletoModel(
      id: id ?? this.id,
      token: token ?? this.token,
      nome: nome ?? this.nome,
      email: email ?? this.email,
      telefone: telefone ?? this.telefone,
      rua: rua ?? this.rua,
      numero: numero ?? this.numero,
      estado: estado ?? this.estado,
      cidade: cidade ?? this.cidade,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'token': token,
      'nome': nome,
      'email': email,
      'telefone': telefone,
      'rua': rua,
      'numero': numero,
      'estado': estado,
      'cidade': cidade,
    };
  }

  factory UsuarioCompletoModel.fromMap(Map<String, dynamic> map) {
    return UsuarioCompletoModel(
      id: map['id'] != null ? map['id'] as int : null,
      token: map['token'] != null ? map['token'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      telefone: map['telefone'] != null ? map['telefone'] as String : null,
      rua: map['rua'] != null ? map['rua'] as String : null,
      numero: map['numero'] != null ? map['numero'] as String : null,
      estado: map['estado'] != null ? map['estado'] as String : null,
      cidade: map['cidade'] != null ? map['cidade'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioCompletoModel.fromJson(String source) =>
      UsuarioCompletoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioCompletoModel(id: $id, token: $token, nome: $nome, email: $email, telefone: $telefone, rua: $rua, numero: $numero, estado: $estado, cidade: $cidade)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UsuarioCompletoModel &&
        other.id == id &&
        other.token == token &&
        other.nome == nome &&
        other.email == email &&
        other.telefone == telefone &&
        other.rua == rua &&
        other.numero == numero &&
        other.estado == estado &&
        other.cidade == cidade;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        token.hashCode ^
        nome.hashCode ^
        email.hashCode ^
        telefone.hashCode ^
        rua.hashCode ^
        numero.hashCode ^
        estado.hashCode ^
        cidade.hashCode;
  }
}