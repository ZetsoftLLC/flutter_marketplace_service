import 'dart:convert';

class WishlistModel {
  WishlistModel({
    this.userId,
    this.productId,
  });

  final String userId;
  final String productId;

  WishlistModel copyWith({
    String userId,
    String productId,
  }) =>
      WishlistModel(
        userId: userId ?? this.userId,
        productId: productId ?? this.productId,
      );

  factory WishlistModel.fromJson(String str) =>
      WishlistModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WishlistModel.fromMap(Map<String, dynamic> json) => WishlistModel(
        userId: json["user_id"],
        productId: json["product_id"],
      );

  Map<String, dynamic> toMap() => {
        "user_id": userId,
        "product_id": productId,
      };
}
