import 'package:flutter_marketplace_service/models/general_settings_response.dart';

class GeneralSettingsProvider {
  GeneralSettingsProvider _provider = GeneralSettingsProvider();

  Future<GeneralSettingsResponseModel> getList() => _provider.getList();
}
