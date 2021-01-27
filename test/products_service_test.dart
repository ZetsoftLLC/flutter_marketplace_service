import 'package:flutter_marketplace_service/service/product/product_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('product getAll', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getAll(1);
    assert(res != null);
  });

  test('product getOfAdmin', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfAdmin(1);
    assert(res != null);
  });

  test('product getOfSeller', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfSeller(1);
    assert(res != null);
  });

  test('product getOfCategory', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfCategory(1, 1);
    assert(res != null);
  });

  test('product getOfSubCategory', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfSubCategory(1, 1);
    assert(res != null);
  });

  test('product getAll', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getAll(1);
    assert(res != null);
  });

  test('product getOfBrand', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfBrand(66, 1);
    assert(res != null);
  });

  test('product getOfTodaysDeal', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfTodaysDeal();
    assert(res != null);
  });

  test('product getOfFeatured', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfFeatured();
    assert(res != null);
  });

  test('product getOfRelated', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfRelated(1);
    assert(res != null);
  });

  test('product getOfBestSelling', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getOfBestSelling();
    assert(res != null);
  });

  test('product getById', () async {
    ProductProvider repo = ProductProvider();
    var res = await repo.getById(1);
    assert(res != null);
  });
}
