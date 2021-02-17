library service;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/category_response.dart';

class CategoryProvider {
  Future<List<CategoryModel>> getAll() async {
    http.Response response = await http
        .get(Config.baseUrl + '/categories')
        .timeout(const Duration(seconds: 15));
    if (response.statusCode == 200) {
      CategoryResponseModel categoryResponseModel =
          allCategoryFromJson(utf8.decode(response.bodyBytes));

      List<CategoryModel> data = categoryResponseModel.data;
      return data;
    } else {
      return null;
    }
  }

  Future<CategoryResponseModel> getTop() async {
    final response = await Api.get("${Config.baseUrl}/categories/top");

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
    final response = await Api.get("${Config.baseUrl}/home-categories");

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
    final response = await Api.get("${Config.baseUrl}/sub-categories/$id");

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
