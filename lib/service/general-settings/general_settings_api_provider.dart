library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/general_settings_response.dart';

class GeneralSettingsProvider {
  Future<GeneralSettingsResponseModel> getList() async {
    final response = await Api.get("${Config.baseUrl}/general-settings");

    if (response.isSuccess) {
      try {
        return GeneralSettingsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
