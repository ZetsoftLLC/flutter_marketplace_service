import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/products_%20response.dart';
import 'package:flutter_marketplace_service/service/product/product_api_provider.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductApiProvider repository;
  ProductCubit(this.repository) : super(ProductEmptyState());

  Future<void> getAll(int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res = await repository.getAll(page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfAdmin(int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res = await repository.getOfAdmin(page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfSeller(int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res = await repository.getOfSeller(page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfCategory(int categoryId, int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res =
          await repository.getOfCategory(categoryId, page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfSubCategory(int subCategoryId, int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res =
          await repository.getOfCategory(subCategoryId, page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfBrand(int brandId, int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res = await repository.getOfBrand(brandId, page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfTodaysDeal(int categoryId, int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res =
          await repository.getOfCategory(categoryId, page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfFeatured() async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res = await repository.getOfFeatured();

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfRelated(int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res = await repository.getOfRelated(page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfBestSelling(int categoryId, int page) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res = await repository.getOfBestSelling();

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getById(int id) async {
    try {
      emit(ProductEmptyState());

      final ProductsResponse res = await repository.getById(id);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }
}
