import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/shop_banner_model.dart';
import 'package:flutter_marketplace_service/service/shop_banner/shop_banner_repository.dart';
import 'package:meta/meta.dart';

part 'shop_banner_state.dart';

class ShopBannerCubit extends Cubit<ShopBannerState> {
  final ShopBannerRepository bannerRepository;
  ShopBannerCubit(this.bannerRepository) : super(ShopBannerEmptyState());

  Future<void> fetchBanners() async {
    try {
      emit(ShopBannerEmptyState());

      final List<ShopBannerModel> _bs =
          await bannerRepository.getAllShopBanners();

      emit(ShopBannerLoadedState(banners: _bs));
    } catch (_) {
      emit(ShopBannerErrorState());
    }
  }

  Future<void> clearBanners() async {
    emit(ShopBannerEmptyState());
  }
}
