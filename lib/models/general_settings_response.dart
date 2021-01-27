import 'dart:convert';

class GeneralSettingsResponse {
  GeneralSettingsResponse({
    this.data,
    this.success,
    this.status,
  });

  final List<GeneralSetting> data;
  final bool success;
  final int status;

  GeneralSettingsResponse copyWith({
    List<GeneralSetting> data,
    bool success,
    int status,
  }) =>
      GeneralSettingsResponse(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
      );

  factory GeneralSettingsResponse.fromJson(String str) =>
      GeneralSettingsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GeneralSettingsResponse.fromMap(Map<String, dynamic> json) =>
      GeneralSettingsResponse(
        data: List<GeneralSetting>.from(
            json["data"].map((x) => GeneralSetting.fromMap(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "success": success,
        "status": status,
      };
}

class GeneralSetting {
  GeneralSetting({
    this.logo,
    this.siteName,
    this.address,
    this.description,
    this.phone,
    this.email,
    this.facebook,
    this.twitter,
    this.instagram,
    this.youtube,
    this.googlePlus,
  });

  final String logo;
  final String siteName;
  final String address;
  final String description;
  final String phone;
  final String email;
  final String facebook;
  final String twitter;
  final String instagram;
  final String youtube;
  final String googlePlus;

  factory GeneralSetting.fromJson(String str) =>
      GeneralSetting.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GeneralSetting.fromMap(Map<String, dynamic> json) => GeneralSetting(
        logo: json["logo"],
        siteName: json["site_name"],
        address: json["address"],
        description: json["description"],
        phone: json["phone"],
        email: json["email"],
        facebook: json["facebook"],
        twitter: json["twitter"],
        instagram: json["instagram"],
        youtube: json["youtube"],
        googlePlus: json["google_plus"],
      );

  Map<String, dynamic> toMap() => {
        "logo": logo,
        "site_name": siteName,
        "address": address,
        "description": description,
        "phone": phone,
        "email": email,
        "facebook": facebook,
        "twitter": twitter,
        "instagram": instagram,
        "youtube": youtube,
        "google_plus": googlePlus,
      };
}
