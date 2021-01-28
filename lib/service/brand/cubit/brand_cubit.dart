import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/banners_response.dart';
import 'package:flutter_marketplace_service/service/brand/brand_repository.dart';
import 'package:meta/meta.dart';

part 'brand_state.dart';

class BrandCubit extends Cubit<BrandState> {
  final BrandRepository bannerRepository;

  BrandCubit(this.bannerRepository) : super(BrandEmptyState());

  Future<void> fetchBanners() async {
    try {
      emit(BrandEmptyState());

      final BannersResponseModel _bs = await bannerRepository.getAllBrands();

      emit(BrandLoadedState(banners: _bs));
    } catch (_) {
      emit(BrandErrorState());
    }
  }

  Future<void> clearBanners() async {
    emit(BrandEmptyState());
  }
}
