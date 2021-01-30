import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_marketplace_service/service/product/cubit/product_cubit.dart';
import 'package:flutter_marketplace_service/service/product/product_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductCubit', () {
    final ProductRepository repo = new ProductRepository();

    test('getOfBestSelling ProductRepository', () async {
      var res = await repo.getOfBestSelling();
      // ignore: unnecessary_statements
      assert(res != null);
    });

    blocTest<ProductCubit, ProductState>(
      'getAll',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getAll(1),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfAdmin',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getOfAdmin(1),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfCategory',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getOfCategory(1, 1),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfSubCategory',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getOfSubCategory(1, 1),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfBrand',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getOfBrand(66, 1),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfTodaysDeal',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getOfTodaysDeal(),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfFeatured',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getOfFeatured(),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfAdmin',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getOfRelated(1),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfAdmin',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getOfBestSelling(),
      expect: null,
    );

    blocTest<ProductCubit, ProductState>(
      'getOfAdmin',
      build: () => ProductCubit(repo),
      act: (cubit) async => cubit.getById(1),
      expect: null,
    );
  });
}
