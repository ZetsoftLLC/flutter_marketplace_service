// To parse this JSON data, do
//
//     final wishlistModel = wishlistModelFromJson(jsonString);

import 'dart:convert';

WishlistModel wishlistModelFromJson(String str) => WishlistModel.fromJson(json.decode(str));

String wishlistModelToJson(WishlistModel data) => json.encode(data.toJson());

class WishlistModel {
  WishlistModel({
    this.data,
    this.success,
    this.status,
  });

  List<String> data;
  bool success;
  int status;

  factory WishlistModel.fromJson(Map<String, dynamic> json) => WishlistModel(
    data: json["data"] == null ? null : List<String>.from(json["data"].map((x) => x)),
    success: json["success"] == null ? null : json["success"],
    status: json["status"] == null ? null : json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x)),
    "success": success == null ? null : success,
    "status": status == null ? null : status,
  };
}
