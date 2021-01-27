import 'dart:convert';

class BannersResponse {
  BannersResponse({
    this.data,
    this.success,
    this.status,
  });

  final List<Banner> data;
  final bool success;
  final int status;

  BannersResponse copyWith({
    List<Banner> data,
    bool success,
    int status,
  }) =>
      BannersResponse(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
      );

  factory BannersResponse.fromJson(String str) =>
      BannersResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannersResponse.fromMap(Map<String, dynamic> json) => BannersResponse(
        data: List<Banner>.from(json["data"].map((x) => Banner.fromMap(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "success": success,
        "status": status,
      };
}

class Banner {
  Banner({
    this.photo,
    this.url,
    this.position,
  });

  final String photo;
  final String url;
  final int position;

  factory Banner.fromJson(String str) => Banner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Banner.fromMap(Map<String, dynamic> json) => Banner(
        photo: json["photo"],
        url: json["url"],
        position: json["position"],
      );

  Map<String, dynamic> toMap() => {
        "photo": photo,
        "url": url,
        "position": position,
      };
}
