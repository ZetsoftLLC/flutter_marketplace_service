library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/products_%20response.dart';

class ProductApiProvider {
  Future<ProductsResponse> getAll(int page) async {
    final response = await Api.get("products?page=$page");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfAdmin(int page) async {
    final response = await Api.get("products/admin?page=$page");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfSeller(int page) async {
    final response = await Api.get("products/seller?page=$page");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfCategory(int categoryId, int page) async {
    final response = await Api.get("products/category$categoryId?page=$page");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfSubCategory(int subCategoryId, int page) async {
    final response =
        await Api.get("products/sub-catego$subCategoryId?page=$page");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfBrand(int brandId, int page) async {
    final response = await Api.get("products/brand$brandId?page=$page");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfTodaysDeal() async {
    final response = await Api.get("products/todays-deal");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfFeatured() async {
    final response = await Api.get("products/featured");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfRelated(int page) async {
    final response = await Api.get("products/related/$page");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getOfBestSelling() async {
    final response = await Api.get("products/best-seller");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponse> getById(int id) async {
    final response = await Api.get("products/$id");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<ProductsResponse>((m) {
          return ProductsResponse.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
