part of 'category_cubit.dart';

@immutable
abstract class CategoryState {}

class CategoryEmptyState extends CategoryState {}

class CategoryLoadingState extends CategoryState {}

class CategoryLoadedState extends CategoryState {
  final CategoryResponseModel list;
  CategoryLoadedState({@required this.list}) : assert(list != null);
}

class CategoryErrorState extends CategoryState {}
