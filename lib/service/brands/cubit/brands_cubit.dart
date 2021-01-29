import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/brands_response_model.dart';
import 'package:flutter_marketplace_service/service/brands/banner_repository.dart';
import 'package:meta/meta.dart';

part 'brands_state.dart';

class BrandsCubit extends Cubit<BrandsState> {
  final BrandsRepository repository;

  BrandsCubit(this.repository) : super(BrandsInitial());

  Future<void> getList() async {
    try {
      emit(BrandsInitial());

      final BrandsResponseModel _bs = await repository.getList();

      emit(BrandLoadedState(list: _bs));
    } catch (_) {
      emit(BrandErrorState());
    }
  }
}
