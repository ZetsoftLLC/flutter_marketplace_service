import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/banners_response_model.dart';
import 'package:flutter_marketplace_service/service/banner/banner_repository.dart';
import 'package:meta/meta.dart';

part 'banner_state.dart';

class BannerCubit extends Cubit<BannerState> {
  final BannersRepository bannersRepository;

  BannerCubit(this.bannersRepository) : super(BannerInitial());

  Future<void> fetchBanners() async {
    try {
      emit(BannerInitial());

      final BannersResponseModel _bs = await bannersRepository.getAllBanners();

      emit(BannerLoadedState(banner: _bs));
    } catch (_) {
      emit(BannerErrorState());
    }
  }

  Future<void> clearBanners() async {
    emit(BannerInitial());
  }
}
