import 'package:flutter_marketplace_service/models/business_settings_response.dart';
import 'package:flutter_marketplace_service/models/colors_response.dart';
import 'package:flutter_marketplace_service/service/color/color_api_provider.dart';

class ColorProvider {
  ColorApiProvider _provider = ColorApiProvider();

  Future<ColorsResponseModel> getList() => _provider.getList();
}
