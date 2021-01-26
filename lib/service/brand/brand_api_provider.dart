library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/brand_model.dart';

class BrandProvider {
  Future<List<BrandModel>> getBrands() async {
    final response = await Api.get("brands");

    if (response.status == 200) {
      try {
        dynamic jsonRes = response.result["data"];
        return jsonRes.map<BrandModel>((m) {
          return BrandModel.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
