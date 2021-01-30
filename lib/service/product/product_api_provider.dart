library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/products_response.dart';

class ProductApiProvider {
  Future<ProductsResponseModel> getAll(int page) async {
    final response = await Api.get("${Config.baseUrl}/products?page=$page");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfAdmin(int page) async {
    final response =
        await Api.get("${Config.baseUrl}/products/admin?page=$page");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfSeller(int page) async {
    final response =
        await Api.get("${Config.baseUrl}/products/seller?page=$page");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfCategory(int categoryId, int page) async {
    final response = await Api.get(
        "${Config.baseUrl}/products/category$categoryId?page=$page");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfSubCategory(
      int subCategoryId, int page) async {
    final response = await Api.get(
        "${Config.baseUrl}/products/sub-catego$subCategoryId?page=$page");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfBrand(int brandId, int page) async {
    final response =
        await Api.get("${Config.baseUrl}/products/brand$brandId?page=$page");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfTodaysDeal() async {
    final response = await Api.get("${Config.baseUrl}/products/todays-deal");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfFeatured() async {
    final response = await Api.get("${Config.baseUrl}/products/featured");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfRelated(int page) async {
    final response = await Api.get("${Config.baseUrl}/products/related/$page");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getOfBestSelling() async {
    final response = await Api.get("${Config.baseUrl}/products/best-seller");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<ProductsResponseModel> getById(int id) async {
    final response = await Api.get("${Config.baseUrl}/products/$id");

    if (response.isSuccess) {
      try {
        return ProductsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
