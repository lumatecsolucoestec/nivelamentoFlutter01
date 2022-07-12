// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RespostaServicoModel {

  bool status;
  String mensagem;
  RespostaServicoModel({
    required this.status,
    required this.mensagem,
  });
 

  RespostaServicoModel copyWith({
    bool? status,
    String? mensagem,
  }) {
    return RespostaServicoModel(
      status: status ?? this.status,
      mensagem: mensagem ?? this.mensagem,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'mensagem': mensagem,
    };
  }

  factory RespostaServicoModel.fromMap(Map<String, dynamic> map) {
    return RespostaServicoModel(
      status: map['status'] as bool,
      mensagem: map['mensagem'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RespostaServicoModel.fromJson(String source) => RespostaServicoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RespostaServicoModel(status: $status, mensagem: $mensagem)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RespostaServicoModel &&
      other.status == status &&
      other.mensagem == mensagem;
  }

  @override
  int get hashCode => status.hashCode ^ mensagem.hashCode;
}
