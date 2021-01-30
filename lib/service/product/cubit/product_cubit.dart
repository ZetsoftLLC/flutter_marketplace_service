import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/products_response.dart';
import 'package:flutter_marketplace_service/service/product/product_repository.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository repository;
  ProductCubit(this.repository) : super(ProductInitial());

  Future<void> getAll(int page) async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res = await repository.getAll(page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfAdmin(int page) async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res = await repository.getOfAdmin(page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfSeller(int page) async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res = await repository.getOfSeller(page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfCategory(int categoryId, int page) async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res =
          await repository.getOfCategory(categoryId, page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfSubCategory(int subCategoryId, int page) async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res =
          await repository.getOfSubCategory(subCategoryId, page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfBrand(int brandId, int page) async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res =
          await repository.getOfBrand(brandId, page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfTodaysDeal() async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res = await repository.getOfTodaysDeal();

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfFeatured() async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res = await repository.getOfFeatured();

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfRelated(int page) async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res = await repository.getOfRelated(page);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getOfBestSelling() async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res = await repository.getOfBestSelling();

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }

  Future<void> getById(int id) async {
    try {
      emit(ProductInitial());

      final ProductsResponseModel res = await repository.getById(id);

      emit(ProductLoadedState(list: res));
    } catch (_) {
      emit(ProductErrorState());
    }
  }
}
