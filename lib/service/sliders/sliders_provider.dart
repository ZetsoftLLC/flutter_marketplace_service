import 'package:flutter_marketplace_service/models/sliders_response.dart';
import 'package:flutter_marketplace_service/service/sliders/sliders_api_provider.dart';

class SlidersProvider {
  SlidersApiProvider _provider = SlidersApiProvider();

  Future<SlidersResponseModel> getList() => _provider.getList();
}
