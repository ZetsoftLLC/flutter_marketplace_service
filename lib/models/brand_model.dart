class BrandModel {
  // int id;
  String name;
  String logo;
  // String link;

  BrandModel({
    // this.id,
    this.name,
    // this.sort,

    this.logo,
    // this.link
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(
      // id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      // 'sort': sort,
      'name': name,
      'logo': logo,
    };
  }
}
