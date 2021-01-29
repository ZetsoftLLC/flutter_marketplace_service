library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/banners_response_model.dart';

class BannerApiProvider {
  Future<BannersResponseModel> getBanners() async {
    final response = await Api.get("${Config.baseUrlV2}/banners");

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
