import 'package:flutter_marketplace_service/models/shop_banner_model.dart';
import 'package:flutter_marketplace_service/service/shop_banner/shop_banner_api_provider.dart';

class ShopBannerRepository {
  ShopBannerProvider _provider = ShopBannerProvider();

  int currentBanner = 0;
  Future<List<ShopBannerModel>> getAllShopBanners() => _provider.getBanners();
}
