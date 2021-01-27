import 'package:flutter_marketplace_service/models/category_response.dart';
import 'package:flutter_marketplace_service/service/category/category_api_provider.dart';

class CategoryProvider {
  CategoryApiProvider _provider = CategoryApiProvider();

  Future<CategoryResponseModel> getAll() => _provider.getAll();
  Future<CategoryResponseModel> getTop() => _provider.getTop();
  Future<CategoryResponseModel> getHomecategories() =>
      _provider.getHomeCategories();
  Future<CategoryResponseModel> getSubCategories(int id) =>
      _provider.getSubCategories(id);
}
