import 'package:flutter_marketplace_service/models/wishlist_request.dart';
import 'package:flutter_marketplace_service/service/wishlist/wishlist_api_provider.dart';

class WishlistRepository {
  WishlistApiProvider _provider = WishlistApiProvider();

  int currentBanner = 0;
  Future<List<WishlistModel>> getAllShopBanners() => _provider.getList();
}
