import 'package:flutter_marketplace_service/service/brand/brand_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Get brands', () async {
    BrandRepository repo = BrandRepository();
    var banners = await repo.getAllBrands();
    assert(banners != null);
  });
}
