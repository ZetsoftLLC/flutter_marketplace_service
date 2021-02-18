import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_marketplace_service/models/search_response_model.dart';
import 'package:flutter_marketplace_service/service/search/search_repository.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepository repository;
  SearchCubit(this.repository) : super(SearchInitial());

  Future<void> search(String text) async {
    try {
      emit(SearchInitial());

      final SearchResponseModel res = await repository.search(text);

      emit(SearchLoadedState(res: res));
    } catch (_) {
      emit(SearchErrorState());
    }
  }

  void clear() {
    emit(SearchInitial());
  }
}
