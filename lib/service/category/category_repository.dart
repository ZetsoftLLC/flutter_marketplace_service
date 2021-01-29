import 'package:flutter_marketplace_service/models/category_response.dart';

class CategoryProvider {
  CategoryProvider ps = CategoryProvider();

  Future<CategoryResponseModel> getAll() => ps.getAll();
  Future<CategoryResponseModel> getTop() => ps.getTop();
  Future<CategoryResponseModel> getHomecategories() => ps.getHomecategories();
  Future<CategoryResponseModel> getSubCategories(int id) =>
      ps.getSubCategories(id);
}
