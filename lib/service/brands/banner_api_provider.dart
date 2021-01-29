library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/brands_response_model.dart';

class BrandsApiProvider {
  Future<BrandsResponseModel> getList() async {
    final response = await Api.getv2("brands");

    if (response.isSuccess) {
      try {
        return BrandsResponseModel.fromJson(response.result);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }
}
