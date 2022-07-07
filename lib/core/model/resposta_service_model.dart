// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RespostaService {
  bool sucesso;
  String msg;
  RespostaService({
    required this.sucesso,
    required this.msg,
  });

  RespostaService copyWith({
    bool? sucesso,
    String? msg,
  }) {
    return RespostaService(
      sucesso: sucesso ?? this.sucesso,
      msg: msg ?? this.msg,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sucesso': sucesso,
      'msg': msg,
    };
  }

  factory RespostaService.fromMap(Map<String, dynamic> map) {
    return RespostaService(
      sucesso: map['sucesso'] as bool,
      msg: map['msg'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RespostaService.fromJson(String source) => RespostaService.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RespostaService(sucesso: $sucesso, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RespostaService &&
      other.sucesso == sucesso &&
      other.msg == msg;
  }

  @override
  int get hashCode => sucesso.hashCode ^ msg.hashCode;
}
