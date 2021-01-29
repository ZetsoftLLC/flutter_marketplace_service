import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/colors_response.dart';
import 'package:flutter_marketplace_service/service/color/color_api_provider.dart';
import 'package:meta/meta.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  final ColorProvider repository;
  ColorCubit(this.repository) : super(ColorInitial());

  Future<void> getAll() async {
    try {
      emit(ColorInitial());

      final ColorsResponseModel res = await repository.getList();

      emit(ColorLoadedState(res: res));
    } catch (_) {
      emit(ColorErrorState());
    }
  }
}
