library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/sliders_response.dart';

class SlidersApiProvider {
  Future<SlidersResponseModel> getList() async {
    final response = await Api.get("sliders");

    if (response.isSuccess) {
      try {
        return SlidersResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
