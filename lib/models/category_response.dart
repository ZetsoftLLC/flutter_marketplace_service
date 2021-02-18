import 'dart:convert';

CategoryResponseModel allCategoryFromJson(String str) =>
    CategoryResponseModel.fromJson(json.decode(str));

String allCategoryToJson(CategoryResponseModel data) =>
    json.encode(data.toJson());

class CategoryResponseModel {
  CategoryResponseModel({
    this.data,
    this.success,
    this.status,
  });

  List<CategoryModel> data;
  bool success;
  int status;

  factory CategoryResponseModel.fromJson(String str) =>
      CategoryResponseModel.fromMap(json.decode(str));

  factory CategoryResponseModel.fromMap(Map<String, dynamic> json) =>
      CategoryResponseModel(
        data: List<CategoryModel>.from(
          json["data"].map((x) => CategoryModel.fromJson(x)),
        ),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "success": success,
        "status": status,
      };
}

class CategoryModel {
  CategoryModel({
    this.name,
    this.banner,
    this.icon,
    this.links,
  });

  String name;
  String banner;
  String icon;
  LinksModel links;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        name: json["name"],
        banner: json["banner"],
        icon: json["icon"],
        links: LinksModel.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "banner": banner,
        "icon": icon,
        "links": links.toJson(),
      };
}

class LinksModel {
  LinksModel({
    this.products,
    this.subCategories,
  });

  String products;
  String subCategories;

  factory LinksModel.fromJson(Map<String, dynamic> json) => LinksModel(
        products: json["products"],
        subCategories: json["sub_categories"],
      );

  Map<String, dynamic> toJson() => {
        "products": products,
        "sub_categories": subCategories,
      };
}
