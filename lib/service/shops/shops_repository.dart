import 'package:flutter_marketplace_service/models/shops_response.dart';
import 'package:flutter_marketplace_service/service/shops/shops_api_provider.dart';

class ShopsRepository {
  ShopsApiProvider _provider = ShopsApiProvider();

  Future<ShopsResponseModel> getList() => _provider.getList();
}
