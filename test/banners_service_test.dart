import 'package:flutter_marketplace_service/service/banner/banner_api_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Get brands', () async {
    BannerApiProvider repo = BannerApiProvider();
    var banners = await repo.getBanners();
    assert(banners != null);
  });
}
