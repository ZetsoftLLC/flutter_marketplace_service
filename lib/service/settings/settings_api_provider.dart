library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/settings_response.dart';

class SettingsApiProvider {
  Future<SettingsResponseModel> getList() async {
    final response = await Api.get("${Config.baseUrl}/settings");

    if (response.isSuccess) {
      try {
        return SettingsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
