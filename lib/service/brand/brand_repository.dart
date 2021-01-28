import 'package:flutter_marketplace_service/models/banners_response.dart';
import 'package:flutter_marketplace_service/service/brand/brand_api_provider.dart';

class BrandRepository {
  BrandProvider _provider = BrandProvider();

  Future<BannersResponseModel> getAllBrands() => _provider.getBrands();
}
