library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/message_response.dart';
import 'package:flutter_marketplace_service/models/wishlist_request.dart';

class WishlistApiProvider {
  Future<List<WishlistModel>> getList(int id) async {
    final response = await Api.get("${Config.baseUrl}/wishlists/$id");

    if (response.isSuccess) {
      try {
        dynamic jsonRes = response.result;
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

  Future<MessageResponse> save(WishlistModel param) async {
    final response = await Api.post("${Config.baseUrl}/wishlists", param);

    if (response.isSuccess) {
      try {
        return MessageResponse.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<MessageResponse> delete(int id) async {
    final response = await Api.delete("${Config.baseUrl}/wishlists/$id");

    if (response.isSuccess) {
      try {
        return MessageResponse.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
