import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_marketplace_service/models/category_response.dart';
import 'package:flutter_marketplace_service/network_error/internet_error.dart';
import 'package:flutter_marketplace_service/service/category/category_api_provider.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryProvider categoryProvider;
  List<CategoryModel> categoryList;

  CategoryBloc({this.categoryProvider}) : super(CategoryInitial());

  @override
  Stream<CategoryState> mapEventToState(CategoryEvent event) async* {
    switch (event) {
      case CategoryEvent.fetchCategory:
        yield CategoryLoading();
        try {
          categoryList = await categoryProvider.getAll();
          yield CategoryLoaded(data: categoryList);
        } on SocketException {
          yield CategoryError(error: NoInternetException('No Internet'));
        } on HttpException {
          yield CategoryError(
              error: NoServiceFoundException('No Service found'));
        } on FormatException {
          yield CategoryError(
              error: InvalidFormatException('Invalid Responce format'));
        } catch (e) {
          yield CategoryError(error: UnknownException('Unknown error'));
        }
        break;
    }
  }
}
