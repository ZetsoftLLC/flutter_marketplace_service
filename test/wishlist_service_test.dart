import 'package:flutter_marketplace_service/models/wishlist_request.dart';
import 'package:flutter_marketplace_service/service/wishlist/wishlist_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('wishlist get', () async {
    WishlistRepository repo = WishlistRepository();
    var res = await repo.getList(15);
    assert(res != null);
  });

  test('wishlist save', () async {
    WishlistRepository repo = WishlistRepository();
    var param = new WishlistModel();
    param.productId = 15;
    param.userId = 12;
    var res = await repo.save(param);
    assert(res != null);
  });

  test('wishlist del', () async {
    WishlistRepository repo = WishlistRepository();
    var res = await repo.delete(15);
    assert(res != null);
  });
}
