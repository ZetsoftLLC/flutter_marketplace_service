import 'dart:convert';

class SearchResponseModel {
  SearchResponseModel({
    this.products,
    this.categories,
    this.keywords,
    this.shops,
  });

  final List<SearchedProduct> products;
  final List<dynamic> categories;
  final List<dynamic> keywords;
  final List<dynamic> shops;

  SearchResponseModel copyWith({
    List<SearchedProduct> products,
    List<dynamic> categories,
    List<dynamic> keywords,
    List<dynamic> shops,
  }) =>
      SearchResponseModel(
        products: products ?? this.products,
        categories: categories ?? this.categories,
        keywords: keywords ?? this.keywords,
        shops: shops ?? this.shops,
      );

  factory SearchResponseModel.fromJson(String str) =>
      SearchResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SearchResponseModel.fromMap(Map<String, dynamic> json) =>
      SearchResponseModel(
        products: List<SearchedProduct>.from(
            json["products"].map((x) => SearchedProduct.fromMap(x))),
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
        shops: List<dynamic>.from(json["shops"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "products": List<dynamic>.from(products.map((x) => x.toMap())),
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
        "shops": List<dynamic>.from(shops.map((x) => x)),
      };
}

class SearchedProduct {
  SearchedProduct({
    this.id,
    this.name,
    this.addedBy,
    this.userId,
    this.categoryId,
    this.subcategoryId,
    this.subsubcategoryId,
    this.brandId,
    this.photos,
    this.thumbnailImg,
    this.videoProvider,
    this.videoLink,
    this.tags,
    this.description,
    this.unitPrice,
    this.purchasePrice,
    this.variantProduct,
    this.attributes,
    this.choiceOptions,
    this.colors,
    this.variations,
    this.todaysDeal,
    this.published,
    this.featured,
    this.sellerFeatured,
    this.currentStock,
    this.unit,
    this.minQty,
    this.discount,
    this.discountType,
    this.tax,
    this.taxType,
    this.shippingType,
    this.shippingCost,
    this.numOfSale,
    this.metaTitle,
    this.metaDescription,
    this.metaImg,
    this.pdf,
    this.slug,
    this.refundable,
    this.earnPoint,
    this.rating,
    this.barcode,
    this.digital,
    this.fileName,
    this.filePath,
    this.createdAt,
    this.updatedAt,
  });

  final int id;
  final String name;
  final String addedBy;
  final int userId;
  final int categoryId;
  final dynamic subcategoryId;
  final dynamic subsubcategoryId;
  final int brandId;
  final String photos;
  final String thumbnailImg;
  final String videoProvider;
  final String videoLink;
  final String tags;
  final dynamic description;
  final int unitPrice;
  final int purchasePrice;
  final int variantProduct;
  final String attributes;
  final String choiceOptions;
  final String colors;
  final dynamic variations;
  final int todaysDeal;
  final int published;
  final int featured;
  final int sellerFeatured;
  final int currentStock;
  final String unit;
  final int minQty;
  final int discount;
  final String discountType;
  final int tax;
  final String taxType;
  final String shippingType;
  final int shippingCost;
  final int numOfSale;
  final String metaTitle;
  final dynamic metaDescription;
  final dynamic metaImg;
  final dynamic pdf;
  final String slug;
  final int refundable;
  final int earnPoint;
  final int rating;
  final dynamic barcode;
  final int digital;
  final dynamic fileName;
  final dynamic filePath;
  final DateTime createdAt;
  final DateTime updatedAt;

  SearchedProduct copyWith({
    int id,
    String name,
    String addedBy,
    int userId,
    int categoryId,
    dynamic subcategoryId,
    dynamic subsubcategoryId,
    int brandId,
    String photos,
    String thumbnailImg,
    String videoProvider,
    String videoLink,
    String tags,
    dynamic description,
    int unitPrice,
    int purchasePrice,
    int variantProduct,
    String attributes,
    String choiceOptions,
    String colors,
    dynamic variations,
    int todaysDeal,
    int published,
    int featured,
    int sellerFeatured,
    int currentStock,
    String unit,
    int minQty,
    int discount,
    String discountType,
    int tax,
    String taxType,
    String shippingType,
    int shippingCost,
    int numOfSale,
    String metaTitle,
    dynamic metaDescription,
    dynamic metaImg,
    dynamic pdf,
    String slug,
    int refundable,
    int earnPoint,
    int rating,
    dynamic barcode,
    int digital,
    dynamic fileName,
    dynamic filePath,
    DateTime createdAt,
    DateTime updatedAt,
  }) =>
      SearchedProduct(
        id: id ?? this.id,
        name: name ?? this.name,
        addedBy: addedBy ?? this.addedBy,
        userId: userId ?? this.userId,
        categoryId: categoryId ?? this.categoryId,
        subcategoryId: subcategoryId ?? this.subcategoryId,
        subsubcategoryId: subsubcategoryId ?? this.subsubcategoryId,
        brandId: brandId ?? this.brandId,
        photos: photos ?? this.photos,
        thumbnailImg: thumbnailImg ?? this.thumbnailImg,
        videoProvider: videoProvider ?? this.videoProvider,
        videoLink: videoLink ?? this.videoLink,
        tags: tags ?? this.tags,
        description: description ?? this.description,
        unitPrice: unitPrice ?? this.unitPrice,
        purchasePrice: purchasePrice ?? this.purchasePrice,
        variantProduct: variantProduct ?? this.variantProduct,
        attributes: attributes ?? this.attributes,
        choiceOptions: choiceOptions ?? this.choiceOptions,
        colors: colors ?? this.colors,
        variations: variations ?? this.variations,
        todaysDeal: todaysDeal ?? this.todaysDeal,
        published: published ?? this.published,
        featured: featured ?? this.featured,
        sellerFeatured: sellerFeatured ?? this.sellerFeatured,
        currentStock: currentStock ?? this.currentStock,
        unit: unit ?? this.unit,
        minQty: minQty ?? this.minQty,
        discount: discount ?? this.discount,
        discountType: discountType ?? this.discountType,
        tax: tax ?? this.tax,
        taxType: taxType ?? this.taxType,
        shippingType: shippingType ?? this.shippingType,
        shippingCost: shippingCost ?? this.shippingCost,
        numOfSale: numOfSale ?? this.numOfSale,
        metaTitle: metaTitle ?? this.metaTitle,
        metaDescription: metaDescription ?? this.metaDescription,
        metaImg: metaImg ?? this.metaImg,
        pdf: pdf ?? this.pdf,
        slug: slug ?? this.slug,
        refundable: refundable ?? this.refundable,
        earnPoint: earnPoint ?? this.earnPoint,
        rating: rating ?? this.rating,
        barcode: barcode ?? this.barcode,
        digital: digital ?? this.digital,
        fileName: fileName ?? this.fileName,
        filePath: filePath ?? this.filePath,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  // factory SearchedProduct.fromJson(String str) => SearchedProduct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SearchedProduct.fromMap(Map<String, dynamic> json) => SearchedProduct(
        id: json["id"],
        name: json["name"],
        addedBy: json["added_by"],
        userId: json["user_id"],
        categoryId: json["category_id"],
        subcategoryId: json["subcategory_id"],
        subsubcategoryId: json["subsubcategory_id"],
        brandId: json["brand_id"],
        photos: json["photos"] == null ? null : json["photos"],
        thumbnailImg:
            json["thumbnail_img"] == null ? null : json["thumbnail_img"],
        videoProvider: json["video_provider"],
        videoLink: json["video_link"] == null ? null : json["video_link"],
        tags: json["tags"],
        description: json["description"],
        unitPrice: json["unit_price"],
        purchasePrice: json["purchase_price"],
        variantProduct: json["variant_product"],
        attributes: json["attributes"],
        choiceOptions: json["choice_options"],
        colors: json["colors"],
        variations: json["variations"],
        todaysDeal: json["todays_deal"],
        published: json["published"],
        featured: json["featured"],
        sellerFeatured: json["seller_featured"],
        currentStock: json["current_stock"],
        unit: json["unit"],
        minQty: json["min_qty"],
        discount: json["discount"],
        discountType: json["discount_type"],
        tax: json["tax"],
        taxType: json["tax_type"],
        shippingType: json["shipping_type"],
        shippingCost: json["shipping_cost"],
        numOfSale: json["num_of_sale"],
        metaTitle: json["meta_title"],
        metaDescription: json["meta_description"],
        metaImg: json["meta_img"],
        pdf: json["pdf"],
        slug: json["slug"],
        refundable: json["refundable"],
        earnPoint: json["earn_point"],
        rating: json["rating"],
        barcode: json["barcode"],
        digital: json["digital"],
        fileName: json["file_name"],
        filePath: json["file_path"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "added_by": addedBy,
        "user_id": userId,
        "category_id": categoryId,
        "subcategory_id": subcategoryId,
        "subsubcategory_id": subsubcategoryId,
        "brand_id": brandId,
        "photos": photos == null ? null : photos,
        "thumbnail_img": thumbnailImg == null ? null : thumbnailImg,
        "video_provider": videoProvider,
        "video_link": videoLink == null ? null : videoLink,
        "tags": tags,
        "description": description,
        "unit_price": unitPrice,
        "purchase_price": purchasePrice,
        "variant_product": variantProduct,
        "attributes": attributes,
        "choice_options": choiceOptions,
        "colors": colors,
        "variations": variations,
        "todays_deal": todaysDeal,
        "published": published,
        "featured": featured,
        "seller_featured": sellerFeatured,
        "current_stock": currentStock,
        "unit": unit,
        "min_qty": minQty,
        "discount": discount,
        "discount_type": discountType,
        "tax": tax,
        "tax_type": taxType,
        "shipping_type": shippingType,
        "shipping_cost": shippingCost,
        "num_of_sale": numOfSale,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "meta_img": metaImg,
        "pdf": pdf,
        "slug": slug,
        "refundable": refundable,
        "earn_point": earnPoint,
        "rating": rating,
        "barcode": barcode,
        "digital": digital,
        "file_name": fileName,
        "file_path": filePath,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
