// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class UsuarioModel {
  int? id;
  String? name;
  String? email;
  String? token;
  String? password;
  UsuarioModel({
    this.id,
    this.name,
    this.email,
    this.token,
    this.password,
  });
  

  UsuarioModel copyWith({
    int? id,
    String? name,
    String? email,
    String? token,
    String? password,
  }) {
    return UsuarioModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      token: token ?? this.token,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'token': token,
      'password': password,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      token: map['token'] != null ? map['token'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) => UsuarioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioModel(id: $id, name: $name, email: $email, token: $token, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UsuarioModel &&
      other.id == id &&
      other.name == name &&
      other.email == email &&
      other.token == token &&
      other.password == password;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      token.hashCode ^
      password.hashCode;
  }
}
