import 'package:flutter_marketplace_service/models/brands_response_model.dart';
import 'package:flutter_marketplace_service/service/brands/banner_api_provider.dart';

class BrandsRepository {
  BrandsApiProvider _provider = BrandsApiProvider();

  Future<BrandsResponseModel> getList() => _provider.getList();
}
