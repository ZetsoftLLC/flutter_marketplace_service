import 'dart:convert';

class BannersResponseModel {
  BannersResponseModel({
    this.data,
    this.success,
    this.status,
  });

  List<BannerModel> data;
  bool success;
  int status;

  BannersResponseModel copyWith({
    List<BannerModel> data,
    bool success,
    int status,
  }) =>
      BannersResponseModel(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
      );

  factory BannersResponseModel.fromJson(String str) =>
      BannersResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannersResponseModel.fromMap(Map<String, dynamic> json) =>
      BannersResponseModel(
        data: List<BannerModel>.from(
            json["data"].map((x) => BannerModel.fromMap(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "success": success,
        "status": status,
      };
}

class BannerModel {
  BannerModel({
    this.photo,
    this.url,
    this.position,
  });

  String photo;
  String url;
  int position;

  factory BannerModel.fromJson(String str) =>
      BannerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannerModel.fromMap(Map<String, dynamic> json) => BannerModel(
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
