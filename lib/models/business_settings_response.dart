import 'dart:convert';

class BusinessSettingsResponse {
  BusinessSettingsResponse({
    this.data,
    this.success,
    this.status,
  });

  final List<BusinessSetting> data;
  final bool success;
  final int status;

  BusinessSettingsResponse copyWith({
    List<BusinessSetting> data,
    bool success,
    int status,
  }) =>
      BusinessSettingsResponse(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
      );

  factory BusinessSettingsResponse.fromJson(String str) =>
      BusinessSettingsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BusinessSettingsResponse.fromMap(Map<String, dynamic> json) =>
      BusinessSettingsResponse(
        data: List<BusinessSetting>.from(
            json["data"].map((x) => BusinessSetting.fromMap(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "success": success,
        "status": status,
      };
}

class BusinessSetting {
  BusinessSetting({
    this.type,
    this.value,
  });

  final String type;
  final dynamic value;

  BusinessSetting copyWith({
    String type,
    dynamic value,
  }) =>
      BusinessSetting(
        type: type ?? this.type,
        value: value ?? this.value,
      );

  factory BusinessSetting.fromJson(String str) =>
      BusinessSetting.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BusinessSetting.fromMap(Map<String, dynamic> json) => BusinessSetting(
        type: json["type"],
        value: json["value"],
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "value": value,
      };
}

class ValueElement {
  ValueElement({
    this.type,
    this.label,
  });

  final String type;
  final String label;

  ValueElement copyWith({
    String type,
    String label,
  }) =>
      ValueElement(
        type: type ?? this.type,
        label: label ?? this.label,
      );

  factory ValueElement.fromJson(String str) =>
      ValueElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ValueElement.fromMap(Map<String, dynamic> json) => ValueElement(
        type: json["type"],
        label: json["label"],
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "label": label,
      };
}
