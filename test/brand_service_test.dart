import 'package:flutter_marketplace_service/models/brand_model.dart';
import 'package:flutter_marketplace_service/service/brand/brand_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Get brands', () async {
    BrandRepository repo = BrandRepository();
    List<BrandModel> banners = await repo.getAllBrands();
    // ignore: unnecessary_statements
    banners;
    // expect(List<BrandModel>, banners);
  });
}
