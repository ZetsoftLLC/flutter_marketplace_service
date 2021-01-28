library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/shops_response.dart';

class ShopsApiProvider {
  Future<ShopsResponseModel> getList() async {
    final response = await Api.get("shops");

    if (response.isSuccess) {
      try {
        return ShopsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
