library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/business_settings_response.dart';

class BusinessSettingsApiProvider {
  Future<BusinessSettingsResponseModel> getList() async {
    final response = await Api.get("${Config.baseUrl}/business-settings");

    if (response.isSuccess) {
      try {
        return BusinessSettingsResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
