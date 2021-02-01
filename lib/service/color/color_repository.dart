import 'package:flutter_marketplace_service/models/colors_response.dart';

class ColorProvider {
  ColorProvider _provider = ColorProvider();

  Future<ColorsResponseModel> getList() => _provider.getList();
}
