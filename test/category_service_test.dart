import 'package:flutter_marketplace_service/service/category/category_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('category getAll', () async {
    var repo = CategoryProvider();
    var res = await repo.getAll();
    assert(res != null);
  });

  test('category getTop', () async {
    var repo = CategoryProvider();
    var res = await repo.getTop();
    assert(res != null);
  });

  test('category getHomecategories', () async {
    var repo = CategoryProvider();
    var res = await repo.getHomecategories();
    assert(res != null);
  });

  test('category getSubCategories', () async {
    var repo = CategoryProvider();
    var res = await repo.getSubCategories(1);
    assert(res != null);
  });
}
