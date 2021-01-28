import 'package:flutter_marketplace_service/models/message_response.dart';
import 'package:flutter_marketplace_service/models/wishlist_request.dart';
import 'package:flutter_marketplace_service/service/wishlist/wishlist_api_provider.dart';

class WishlistRepository {
  WishlistApiProvider _provider = WishlistApiProvider();

  Future<List<WishlistModel>> getList(int id) => _provider.getList(id);
  Future<MessageResponse> save(WishlistModel param) => _provider.save(param);
  Future<MessageResponse> delete(int id) => _provider.delete(id);
}
