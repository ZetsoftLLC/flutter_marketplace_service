part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductEmptyState extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadedState extends ProductState {
  final ProductsResponse list;
  ProductLoadedState({@required this.list}) : assert(list != null);
}

class ProductErrorState extends ProductState {}
