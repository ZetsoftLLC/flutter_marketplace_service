import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/general_settings_response.dart';
import 'package:flutter_marketplace_service/service/general-settings/general_settings_api_provider.dart';
import 'package:meta/meta.dart';

part 'general_settings_state.dart';

class GeneralSettingsCubit extends Cubit<GeneralSettingsState> {
  final GeneralSettingsProvider repository;
  GeneralSettingsCubit(this.repository) : super(GeneralSettingsInitial());

  Future<void> getAll() async {
    try {
      emit(GeneralSettingsInitial());

      final GeneralSettingsResponseModel res = await repository.getList();

      emit(GeneralSettingsLoadedState(res: res));
    } catch (_) {
      emit(GeneralSettingsErrorState());
    }
  }
}
