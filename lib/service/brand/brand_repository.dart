import 'package:flutter_marketplace_service/models/brand_model.dart';
import 'package:flutter_marketplace_service/service/brand/brand_api_provider.dart';

class BrandRepository {
  BrandProvider _provider = BrandProvider();

  Future<List<BrandModel>> getAllBrands() => _provider.getBrands();
}
