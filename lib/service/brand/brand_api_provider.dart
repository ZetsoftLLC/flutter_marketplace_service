library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/brand_model.dart';

class BrandProvider {
  Future<List<BrandModel>> getBrands() async {
    final response = await Api.get("brands");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        var data = jsonRes["data"];
        return data.map<BrandModel>((m) {
          return BrandModel.fromJson(m);
        }).toList();
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }
}
