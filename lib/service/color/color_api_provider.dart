library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/colors_response.dart';

class ColorProvider {
  Future<ColorsResponseModel> getList() async {
    final response = await Api.get("${Config.baseUrl}/colors");

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
