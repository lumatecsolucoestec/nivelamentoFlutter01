// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginDTO {
  String usuario;
  String senha;
  LoginDTO({
    required this.usuario,
    required this.senha,
  });

  LoginDTO copyWith({
    String? usuario,
    String? senha,
  }) {
    return LoginDTO(
      usuario: usuario ?? this.usuario,
      senha: senha ?? this.senha,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usuario': usuario,
      'senha': senha,
    };
  }

  factory LoginDTO.fromMap(Map<String, dynamic> map) {
    return LoginDTO(
      usuario: map['usuario'] as String,
      senha: map['senha'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginDTO.fromJson(String source) => LoginDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginDTO(usuario: $usuario, senha: $senha)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LoginDTO &&
      other.usuario == usuario &&
      other.senha == senha;
  }

  @override
  int get hashCode => usuario.hashCode ^ senha.hashCode;
}
