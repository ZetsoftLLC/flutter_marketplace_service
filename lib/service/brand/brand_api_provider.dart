library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/banners_response.dart';

class BrandProvider {
  Future<BannersResponseModel> getBrands() async {
    final response = await Api.get("brands");

    if (response.isSuccess) {
      try {
        return BannersResponseModel.fromJson(response.result);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }
}
