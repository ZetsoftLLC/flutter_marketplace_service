import 'dart:convert';

class LoginResponse {
  LoginResponse({
    this.accessToken,
    this.tokenType,
    this.expiresAt,
    this.user,
  });

  final String accessToken;
  final String tokenType;
  final DateTime expiresAt;
  final User user;

  LoginResponse copyWith({
    String accessToken,
    String tokenType,
    DateTime expiresAt,
    User user,
  }) =>
      LoginResponse(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresAt: expiresAt ?? this.expiresAt,
        user: user ?? this.user,
      );

  factory LoginResponse.fromJson(String str) =>
      LoginResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromMap(Map<String, dynamic> json) => LoginResponse(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresAt: DateTime.parse(json["expires_at"]),
        user: User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_at": expiresAt.toIso8601String(),
        "user": user.toMap(),
      };
}

class User {
  User({
    this.id,
    this.type,
    this.name,
    this.email,
    this.avatar,
    this.avatarOriginal,
    this.address,
    this.country,
    this.city,
    this.postalCode,
    this.phone,
  });

  final int id;
  final String type;
  final String name;
  final String email;
  final dynamic avatar;
  final dynamic avatarOriginal;
  final dynamic address;
  final dynamic country;
  final dynamic city;
  final dynamic postalCode;
  final dynamic phone;

  User copyWith({
    int id,
    String type,
    String name,
    String email,
    dynamic avatar,
    dynamic avatarOriginal,
    dynamic address,
    dynamic country,
    dynamic city,
    dynamic postalCode,
    dynamic phone,
  }) =>
      User(
        id: id ?? this.id,
        type: type ?? this.type,
        name: name ?? this.name,
        email: email ?? this.email,
        avatar: avatar ?? this.avatar,
        avatarOriginal: avatarOriginal ?? this.avatarOriginal,
        address: address ?? this.address,
        country: country ?? this.country,
        city: city ?? this.city,
        postalCode: postalCode ?? this.postalCode,
        phone: phone ?? this.phone,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        email: json["email"],
        avatar: json["avatar"],
        avatarOriginal: json["avatar_original"],
        address: json["address"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        phone: json["phone"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "type": type,
        "name": name,
        "email": email,
        "avatar": avatar,
        "avatar_original": avatarOriginal,
        "address": address,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "phone": phone,
      };
}
