// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CadastroUsuarioDTO {
  String nome;
  String usuario;
  String senha;
  String repitaSenha;
  CadastroUsuarioDTO({
    required this.nome,
    required this.usuario,
    required this.senha,
    required this.repitaSenha,
  });

  CadastroUsuarioDTO copyWith({
    String? nome,
    String? usuario,
    String? senha,
    String? repitaSenha,
  }) {
    return CadastroUsuarioDTO(
      nome: nome ?? this.nome,
      usuario: usuario ?? this.usuario,
      senha: senha ?? this.senha,
      repitaSenha: repitaSenha ?? this.repitaSenha,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'usuario': usuario,
      'senha': senha,
      'repitaSenha': repitaSenha,
    };
  }

  factory CadastroUsuarioDTO.fromMap(Map<String, dynamic> map) {
    return CadastroUsuarioDTO(
      nome: map['nome'] as String,
      usuario: map['usuario'] as String,
      senha: map['senha'] as String,
      repitaSenha: map['repitaSenha'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CadastroUsuarioDTO.fromJson(String source) => CadastroUsuarioDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CadastroUsuarioDTO(nome: $nome, usuario: $usuario, senha: $senha, repitaSenha: $repitaSenha)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CadastroUsuarioDTO &&
      other.nome == nome &&
      other.usuario == usuario &&
      other.senha == senha &&
      other.repitaSenha == repitaSenha;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
      usuario.hashCode ^
      senha.hashCode ^
      repitaSenha.hashCode;
  }
}
