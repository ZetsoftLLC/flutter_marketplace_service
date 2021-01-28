library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/colors_response.dart';

class ColorApiProvider {
  Future<ColorsResponseModel> getList() async {
    final response = await Api.get("colors");

    if (response.isSuccess) {
      try {
        return ColorsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
