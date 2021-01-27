
import 'dart:convert';

AllCategory allCategoryFromJson(String str) => AllCategory.fromJson(json.decode(str));

String allCategoryToJson(AllCategory data) => json.encode(data.toJson());

class AllCategory {
  AllCategory({
    this.data,
    this.success,
    this.status,
  });

  List<Datum> data;
  bool success;
  int status;

  factory AllCategory.fromJson(Map<String, dynamic> json) => AllCategory(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    success: json["success"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "success": success,
    "status": status,
  };
}

class Datum {
  Datum({
    this.name,
    this.banner,
    this.icon,
    this.links,
  });

  String name;
  String banner;
  String icon;
  Links links;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    name: json["name"],
    banner: json["banner"],
    icon: json["icon"],
    links: Links.fromJson(json["links"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "banner": banner,
    "icon": icon,
    "links": links.toJson(),
  };
}

class Links {
  Links({
    this.products,
    this.subCategories,
  });

  String products;
  String subCategories;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    products: json["products"],
    subCategories: json["sub_categories"],
  );

  Map<String, dynamic> toJson() => {
    "products": products,
    "sub_categories": subCategories,
  };
}
