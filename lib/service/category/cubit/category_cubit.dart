import 'package:bloc/bloc.dart';
import 'package:flutter_marketplace_service/models/category_response.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryEmptyState());
}
