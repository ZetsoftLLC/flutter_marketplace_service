library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/wishlist_request.dart';

class WishlistApiProvider {
  Future<List<WishlistModel>> getList() async {
    final response = await Api.get("wishlists");

    if (response.status == 200) {
      try {
        dynamic jsonRes = response.result["data"];
        return jsonRes.map<WishlistModel>((m) {
          return WishlistModel.fromJson(m);
        }).toList();
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
