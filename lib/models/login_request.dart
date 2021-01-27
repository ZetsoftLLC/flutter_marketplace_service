import 'dart:convert';

class LoginRequest {
  LoginRequest({
    this.email,
    this.password,
    this.rememberMe,
  });

  String email;
  String password;
  bool rememberMe;

  LoginRequest copyWith({
    String email,
    String password,
    bool rememberMe,
  }) =>
      LoginRequest(
        email: email ?? this.email,
        password: password ?? this.password,
        rememberMe: rememberMe ?? this.rememberMe,
      );

  factory LoginRequest.fromJson(String str) =>
      LoginRequest.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginRequest.fromMap(Map<String, dynamic> json) => LoginRequest(
        email: json["email"],
        password: json["password"],
        rememberMe: json["remember_me"],
      );

  Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
        "remember_me": rememberMe,
      };
}
