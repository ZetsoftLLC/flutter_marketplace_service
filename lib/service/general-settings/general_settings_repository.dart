import 'package:flutter_marketplace_service/models/general_settings_response.dart';
import 'package:flutter_marketplace_service/service/general-settings/general_settings_api_provider.dart';

class GeneralSettingsRepository {
  GeneralSettingsProvider _provider = GeneralSettingsProvider();

  Future<GeneralSettingsResponseModel> getList() => _provider.getList();
}
