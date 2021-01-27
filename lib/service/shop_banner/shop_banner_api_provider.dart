library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/shop_banner_model.dart';

class ShopBannerProvider {
  Future<List<ShopBannerModel>> getBanners() async {
    final response = await Api.get("");
    // final response = await Api.get("shopBanners");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
        // dynamic jsonRes = response.result["data"];
        return jsonRes.map<ShopBannerModel>((m) {
          return ShopBannerModel.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
