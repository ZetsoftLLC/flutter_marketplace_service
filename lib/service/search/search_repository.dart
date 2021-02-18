import 'package:flutter_marketplace_service/models/search_response_model.dart';
import 'package:flutter_marketplace_service/service/search/search_api_provider.dart';

class SearchRepository {
  SearchApiProvider _pro = SearchApiProvider();

  Future<SearchResponseModel> search(String text) => _pro.search(text);
}
