import 'package:flutter_marketplace_service/models/settings_response.dart';
import 'package:flutter_marketplace_service/service/settings/settings_api_provider.dart';

class SettingsProvider {
  SettingsApiProvider _provider = SettingsApiProvider();

  Future<SettingsResponseModel> getList() => _provider.getList();
}
