import 'package:flutter_marketplace_service/models/products_response.dart';
import 'package:flutter_marketplace_service/service/product/product_api_provider.dart';

class ProductRepository {
  ProductApiProvider _pro = ProductApiProvider();

  Future<ProductsResponseModel> getAll(int page) => _pro.getAll(page);

  Future<ProductsResponseModel> getOfAdmin(int page) => _pro.getOfAdmin(page);

  Future<ProductsResponseModel> getOfSeller(int page) => _pro.getOfSeller(page);

  Future<ProductsResponseModel> getOfCategory(int categoryId, int page) =>
      _pro.getOfCategory(categoryId, page);

  Future<ProductsResponseModel> getOfSubCategory(int subCategoryId, int page) =>
      _pro.getOfSubCategory(subCategoryId, page);

  Future<ProductsResponseModel> getOfBrand(int brandId, int page) =>
      _pro.getOfBrand(brandId, page);

  Future<ProductsResponseModel> getOfTodaysDeal() => _pro.getOfTodaysDeal();

  Future<ProductsResponseModel> getOfFeatured() => _pro.getOfFeatured();

  Future<ProductsResponseModel> getOfRelated(int page) =>
      _pro.getOfRelated(page);

  Future<ProductsResponseModel> getOfBestSelling() => _pro.getOfBestSelling();

  Future<ProductsResponseModel> getById(int id) => _pro.getById(id);
}
