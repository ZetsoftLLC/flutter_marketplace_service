library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/category_response.dart';

class CategoryProvider {
  Future<CategoryResponseModel> getAll() async {
    final response = await Api.get("categories");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<CategoryResponseModel>((m) {
          return CategoryResponseModel.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<CategoryResponseModel> getTop() async {
    final response = await Api.get("categories/top");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<CategoryResponseModel>((m) {
          return CategoryResponseModel.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<CategoryResponseModel> getHomeCategories() async {
    final response = await Api.get("home-categories");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<CategoryResponseModel>((m) {
          return CategoryResponseModel.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<CategoryResponseModel> getSubCategories(int id) async {
    final response = await Api.get("sub-categories/$id");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        return jsonRes.map<CategoryResponseModel>((m) {
          return CategoryResponseModel.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
