import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_marketplace_service/service/banner/banner_repository.dart';
import 'package:flutter_marketplace_service/service/banner/cubit/banner_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

class MockBannerCubit extends MockBloc<BannerState> implements BannerCubit {}

void main() {
  group('BannersCubit', () {
    final BannersRepository repository = new BannersRepository();
    blocTest<BannerCubit, BannerState>(
      'fetchBanners',
      build: () => BannerCubit(repository),
      act: (cubit) async => cubit.fetchBanners(),
      expect: [null],
    );
  });
}
