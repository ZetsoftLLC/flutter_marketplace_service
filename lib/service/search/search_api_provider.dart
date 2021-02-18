library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/search_response_model.dart';

class SearchApiProvider {
  Future<SearchResponseModel> search(String searchText) async {
    final url = "${Config.baseUrl}/ajax_search?search=$searchText";
    final response = await Api.get(url);

    if (response.isSuccess) {
      try {
        return SearchResponseModel.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
