import 'dart:convert';

class ProductsResponseModel {
  ProductsResponseModel({
    this.data,
    this.success,
    this.status,
  });

  final List<ProductModel> data;
  final bool success;
  final int status;

  ProductsResponseModel copyWith({
    List<ProductModel> data,
    bool success,
    int status,
  }) =>
      ProductsResponseModel(
        data: data ?? this.data,
        success: success ?? this.success,
        status: status ?? this.status,
      );

  factory ProductsResponseModel.fromJson(String str) =>
      ProductsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductsResponseModel.fromMap(Map<String, dynamic> json) =>
      ProductsResponseModel(
        data: List<ProductModel>.from(
            json["data"].map((x) => ProductModel.fromMap(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "success": success,
        "status": status,
      };
}

class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.photos,
    this.thumbnailImage,
    this.basePrice,
    this.baseDiscountedPrice,
    this.todaysDeal,
    this.featured,
    this.unit,
    this.discount,
    this.discountType,
    this.rating,
    this.sales,
    this.variant,
    this.variations,
    this.links,
  });

  final int id;
  final String name;
  final List<String> photos;
  final String thumbnailImage;
  final double basePrice;
  final double baseDiscountedPrice;
  final int todaysDeal;
  final int featured;
  final Unit unit;
  final double discount;
  final DiscountType discountType;
  final int rating;
  final int sales;
  final Varia variant;
  final List<Varia> variations;
  final Links links;

  ProductModel copyWith({
    int id,
    String name,
    List<String> photos,
    String thumbnailImage,
    double basePrice,
    double baseDiscountedPrice,
    int todaysDeal,
    int featured,
    Unit unit,
    double discount,
    DiscountType discountType,
    int rating,
    int sales,
    Varia variant,
    List<Varia> variations,
    Links links,
  }) =>
      ProductModel(
        id: id ?? this.id,
        name: name ?? this.name,
        photos: photos ?? this.photos,
        thumbnailImage: thumbnailImage ?? this.thumbnailImage,
        basePrice: basePrice ?? this.basePrice,
        baseDiscountedPrice: baseDiscountedPrice ?? this.baseDiscountedPrice,
        todaysDeal: todaysDeal ?? this.todaysDeal,
        featured: featured ?? this.featured,
        unit: unit ?? this.unit,
        discount: discount ?? this.discount,
        discountType: discountType ?? this.discountType,
        rating: rating ?? this.rating,
        sales: sales ?? this.sales,
        variant: variant ?? this.variant,
        variations: variations ?? this.variations,
        links: links ?? this.links,
      );

  factory ProductModel.fromJson(String str) =>
      ProductModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        photos: List<String>.from(json["photos"].map((x) => x)),
        thumbnailImage: json["thumbnail_image"],
        basePrice: json["base_price"].toDouble(),
        baseDiscountedPrice: json["base_discounted_price"].toDouble(),
        todaysDeal: json["todays_deal"],
        featured: json["featured"],
        unit: unitValues.map[json["unit"]],
        discount: json["discount"].toDouble(),
        discountType: discountTypeValues.map[json["discount_type"]],
        rating: json["rating"],
        sales: json["sales"],
        variant: Varia.fromMap(json["variant"]),
        variations:
            List<Varia>.from(json["variations"].map((x) => Varia.fromMap(x))),
        links: Links.fromMap(json["links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "photos": List<dynamic>.from(photos.map((x) => x)),
        "thumbnail_image": thumbnailImage,
        "base_price": basePrice,
        "base_discounted_price": baseDiscountedPrice,
        "todays_deal": todaysDeal,
        "featured": featured,
        "unit": unitValues.reverse[unit],
        "discount": discount,
        "discount_type": discountTypeValues.reverse[discountType],
        "rating": rating,
        "sales": sales,
        "variant": variant.toMap(),
        "variations": List<dynamic>.from(variations.map((x) => x.toMap())),
        "links": links.toMap(),
      };
}

enum DiscountType { PERCENT, AMOUNT }

final discountTypeValues = EnumValues(
    {"amount": DiscountType.AMOUNT, "percent": DiscountType.PERCENT});

class Links {
  Links({
    this.details,
    this.reviews,
    this.related,
    this.topFromSeller,
  });

  final String details;
  final String reviews;
  final String related;
  final String topFromSeller;

  Links copyWith({
    String details,
    String reviews,
    String related,
    String topFromSeller,
  }) =>
      Links(
        details: details ?? this.details,
        reviews: reviews ?? this.reviews,
        related: related ?? this.related,
        topFromSeller: topFromSeller ?? this.topFromSeller,
      );

  factory Links.fromJson(String str) => Links.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Links.fromMap(Map<String, dynamic> json) => Links(
        details: json["details"],
        reviews: json["reviews"],
        related: json["related"],
        topFromSeller: json["top_from_seller"],
      );

  Map<String, dynamic> toMap() => {
        "details": details,
        "reviews": reviews,
        "related": related,
        "top_from_seller": topFromSeller,
      };
}

enum Unit { KG, UNIT_KG }

final unitValues = EnumValues({"KG": Unit.KG, "Kg": Unit.UNIT_KG});

class Varia {
  Varia({
    this.id,
    this.productId,
    this.variant,
    this.sku,
    this.price,
    this.qty,
    this.createdAt,
    this.updatedAt,
  });

  final int id;
  final int productId;
  final String variant;
  final String sku;
  final int price;
  final int qty;
  final DateTime createdAt;
  final DateTime updatedAt;

  Varia copyWith({
    int id,
    int productId,
    String variant,
    String sku,
    int price,
    int qty,
    DateTime createdAt,
    DateTime updatedAt,
  }) =>
      Varia(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        variant: variant ?? this.variant,
        sku: sku ?? this.sku,
        price: price ?? this.price,
        qty: qty ?? this.qty,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Varia.fromJson(String str) => Varia.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Varia.fromMap(Map<String, dynamic> json) => Varia(
        id: json["id"],
        productId: json["product_id"],
        variant: json["variant"] == null ? null : json["variant"],
        sku: json["sku"] == null ? null : json["sku"],
        price: json["price"],
        qty: json["qty"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "product_id": productId,
        "variant": variant == null ? null : variant,
        "sku": sku == null ? null : sku,
        "price": price,
        "qty": qty,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
