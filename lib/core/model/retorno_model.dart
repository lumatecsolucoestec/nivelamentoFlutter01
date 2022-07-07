// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RetornoAPI {
  int statusCode;
  dynamic body;
  RetornoAPI({
    required this.statusCode,
    required this.body,
  });

  RetornoAPI copyWith({
    int? statusCode,
    dynamic? body,
  }) {
    return RetornoAPI(
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

  factory RetornoAPI.fromMap(Map<String, dynamic> map) {
    return RetornoAPI(
      statusCode: map['statusCode'] as int,
      body: map['body'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory RetornoAPI.fromJson(String source) => RetornoAPI.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RetornoAPI(statusCode: $statusCode, body: $body)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RetornoAPI &&
      other.statusCode == statusCode &&
      other.body == body;
  }

  @override
  int get hashCode => statusCode.hashCode ^ body.hashCode;
}
