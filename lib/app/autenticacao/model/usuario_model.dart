import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UsuarioModel {

  String username;
  String password;
  String name;
  String email;
  UsuarioModel({
    required this.username,
    required this.password,
    required this.name,
    required this.email,
  });

  UsuarioModel copyWith({
    String? username,
    String? password,
    String? name,
    String? email,
  }) {
    return UsuarioModel(
      username: username ?? this.username,
      password: password ?? this.password,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
      'name': name,
      'email': email,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      username: map['username'] as String,
      password: map['password'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) => UsuarioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioModel(username: $username, password: $password, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UsuarioModel &&
      other.username == username &&
      other.password == password &&
      other.name == name &&
      other.email == email;
  }

  @override
  int get hashCode {
    return username.hashCode ^
      password.hashCode ^
      name.hashCode ^
      email.hashCode;
  }
}
