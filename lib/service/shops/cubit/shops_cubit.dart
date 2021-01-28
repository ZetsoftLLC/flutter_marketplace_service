import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/shops_response.dart';
import 'package:flutter_marketplace_service/service/shops/shops_repository.dart';
import 'package:meta/meta.dart';

part 'shops_state.dart';

class ShopsCubit extends Cubit<ShopsState> {
  final ShopsProvider repository;
  ShopsCubit(this.repository) : super(ShopsInitial());

  Future<void> fetchBanners() async {
    try {
      emit(ShopsInitial());

      final ShopsResponseModel _bs = await repository.getList();

      emit(ShopsLoadedState(res: _bs));
    } catch (_) {
      emit(ShopsErrorState());
    }
  }
}
