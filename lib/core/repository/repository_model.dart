// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RepositoryModel {

  int statusCode;
  dynamic body;
  RepositoryModel({
    required this.statusCode,
    required this.body,
  });

  RepositoryModel copyWith({
    int? statusCode,
    dynamic? body,
  }) {
    return RepositoryModel(
      statusCode: statusCode ?? this.statusCode,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'body': body,
    };
  }

  factory RepositoryModel.fromMap(Map<String, dynamic> map) {
    return RepositoryModel(
      statusCode: map['statusCode'] as int,
      body: map['body'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory RepositoryModel.fromJson(String source) => RepositoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RepositoryModel(statusCode: $statusCode, body: $body)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RepositoryModel &&
      other.statusCode == statusCode &&
      other.body == body;
  }

  @override
  int get hashCode => statusCode.hashCode ^ body.hashCode;
}
