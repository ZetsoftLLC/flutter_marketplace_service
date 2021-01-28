import 'package:flutter_marketplace_service/models/category_response.dart';
import 'package:flutter_marketplace_service/service/category/category_api_provider.dart';

class CategoryProvider {
  CategoryApiProvider ps = CategoryApiProvider();

  Future<CategoryResponseModel> getAll() => ps.getAll();
  Future<CategoryResponseModel> getTop() => ps.getTop();
  Future<CategoryResponseModel> getHomecategories() => ps.getHomeCategories();
  Future<CategoryResponseModel> getSubCategories(int id) =>
      ps.getSubCategories(id);
}
