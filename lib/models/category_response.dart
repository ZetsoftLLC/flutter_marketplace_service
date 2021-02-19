import 'dart:convert';

class CategoryResponseModel {
  CategoryResponseModel({
    this.data,
    this.success,
    this.status,
  });

  final List<CategoryModel> data;
  final bool success;
  final int status;

  CategoryResponseModel copyWith({
    List<CategoryModel> data,
    bool success,
    int status,
  }) =>
      CategoryResponseModel(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
      );

  factory CategoryResponseModel.fromJson(String str) =>
      CategoryResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryResponseModel.fromMap(Map<String, dynamic> json) =>
      CategoryResponseModel(
        data: List<CategoryModel>.from(
            json["data"].map((x) => CategoryModel.fromMap(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "success": success,
        "status": status,
      };
}

class CategoryModel {
  CategoryModel({
    this.id,
    this.name,
    this.banner,
    this.icon,
    this.links,
  });

  final int id;
  final String name;
  final String banner;
  final String icon;
  final Links links;

  CategoryModel copyWith({
    int id,
    String name,
    String banner,
    String icon,
    Links links,
  }) =>
      CategoryModel(
        id: id ?? this.id,
        name: name ?? this.name,
        banner: banner ?? this.banner,
        icon: icon ?? this.icon,
        links: links ?? this.links,
      );

  factory CategoryModel.fromJson(String str) =>
      CategoryModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromMap(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        name: json["name"],
        banner: json["banner"],
        icon: json["icon"],
        links: Links.fromMap(json["links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "banner": banner,
        "icon": icon,
        "links": links.toMap(),
      };
}

class Links {
  Links({
    this.products,
    this.subCategories,
  });

  final String products;
  final String subCategories;

  Links copyWith({
    String products,
    String subCategories,
  }) =>
      Links(
        products: products ?? this.products,
        subCategories: subCategories ?? this.subCategories,
      );

  factory Links.fromJson(String str) => Links.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Links.fromMap(Map<String, dynamic> json) => Links(
        products: json["products"],
        subCategories: json["sub_categories"],
      );

  Map<String, dynamic> toMap() => {
        "products": products,
        "sub_categories": subCategories,
      };
}
