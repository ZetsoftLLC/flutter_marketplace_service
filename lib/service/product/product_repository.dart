import 'package:flutter_marketplace_service/models/products_%20response.dart';
import 'package:flutter_marketplace_service/service/product/product_api_provider.dart';

class ProductProvider {
  ProductApiProvider _pro = ProductApiProvider();

  Future<ProductsResponse> getAll(int page) => _pro.getAll(page);

  Future<ProductsResponse> getOfAdmin(int page) => _pro.getOfAdmin(page);

  Future<ProductsResponse> getOfSeller(int page) => _pro.getOfSeller(page);

  Future<ProductsResponse> getOfCategory(int categoryId, int page) =>
      _pro.getOfCategory(categoryId, page);

  Future<ProductsResponse> getOfSubCategory(int subCategoryId, int page) =>
      _pro.getOfSubCategory(subCategoryId, page);

  Future<ProductsResponse> getOfBrand(int brandId, int page) =>
      _pro.getOfBrand(brandId, page);

  Future<ProductsResponse> getOfTodaysDeal() => _pro.getOfTodaysDeal();

  Future<ProductsResponse> getOfFeatured() => _pro.getOfFeatured();

  Future<ProductsResponse> getOfRelated(int page) => _pro.getOfRelated(page);

  Future<ProductsResponse> getOfBestSelling() => _pro.getOfBestSelling();

  Future<ProductsResponse> getById(int id) => _pro.getById(id);
}
