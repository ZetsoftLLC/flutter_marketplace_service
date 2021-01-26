import 'package:flutter_marketplace_service/models/shop_banner_model.dart';
import 'package:flutter_marketplace_service/service/shop_banner/shop_banner_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Get banners', () async {
    ShopBannerRepository repo = ShopBannerRepository();
    List<ShopBannerModel> banners = await repo.getAllShopBanners();
    // ignore: unnecessary_statements
    banners;
  });
}
