import 'dart:convert';

class SlidersResponse {
  SlidersResponse({
    this.data,
    this.success,
    this.status,
  });

  final List<Slider> data;
  final bool success;
  final int status;

  SlidersResponse copyWith({
    List<Slider> data,
    bool success,
    int status,
  }) =>
      SlidersResponse(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
      );

  factory SlidersResponse.fromJson(String str) =>
      SlidersResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SlidersResponse.fromMap(Map<String, dynamic> json) => SlidersResponse(
        data: List<Slider>.from(json["data"].map((x) => Slider.fromMap(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "success": success,
        "status": status,
      };
}

class Slider {
  Slider({
    this.photo,
    this.link,
  });

  final String photo;
  final String link;

  Slider copyWith({
    String photo,
    String link,
  }) =>
      Slider(
        photo: photo ?? this.photo,
        link: link ?? this.link,
      );

  factory Slider.fromJson(String str) => Slider.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Slider.fromMap(Map<String, dynamic> json) => Slider(
        photo: json["photo"],
        link: json["link"],
      );

  Map<String, dynamic> toMap() => {
        "photo": photo,
        "link": link,
      };
}
