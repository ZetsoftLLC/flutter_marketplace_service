import 'dart:convert';

class ColorsResponse {
  ColorsResponse({
    this.data,
    this.success,
    this.status,
  });

  final List<Color> data;
  final bool success;
  final int status;

  ColorsResponse copyWith({
    List<Color> data,
    bool success,
    int status,
  }) =>
      ColorsResponse(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
      );

  factory ColorsResponse.fromJson(String str) =>
      ColorsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ColorsResponse.fromMap(Map<String, dynamic> json) => ColorsResponse(
        data: List<Color>.from(json["data"].map((x) => Color.fromMap(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "success": success,
        "status": status,
      };
}

class Color {
  Color({
    this.name,
    this.code,
  });

  final String name;
  final String code;

  Color copyWith({
    String name,
    String code,
  }) =>
      Color(
        name: name ?? this.name,
        code: code ?? this.code,
      );

  factory Color.fromJson(String str) => Color.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Color.fromMap(Map<String, dynamic> json) => Color(
        name: json["name"],
        code: json["code"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "code": code,
      };
}
