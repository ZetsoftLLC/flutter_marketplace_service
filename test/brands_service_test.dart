import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_marketplace_service/service/brands/banner_repository.dart';
import 'package:flutter_marketplace_service/service/brands/cubit/brands_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BrandsCubit', () {
    final BrandsRepository repository = new BrandsRepository();
    blocTest<BrandsCubit, BrandsState>(
      'get list',
      build: () => BrandsCubit(repository),
      act: (cubit) async => cubit.getList(),
      expect: null,
    );
  });
}
