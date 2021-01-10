library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/shop_banners_model.dart';

class ShopBannerService {
  ShopBannerService._();

  static Future<List<ShopBanners>> getBanners() async {
    Api api = new Api();
    var res = await api.get<ShopBanners>("/shopBanners");
    print(res);

    // ignore: deprecated_member_use
    return List<ShopBanners>();
  }
}
