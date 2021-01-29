import 'package:flutter_marketplace_service/models/banners_response_model.dart';
import 'package:flutter_marketplace_service/service/banner/banner_api_provider.dart';

class BannersRepository {
  BannerApiProvider _provider = BannerApiProvider();

  Future<BannersResponseModel> getAllBanners() => _provider.getBanners();
}
