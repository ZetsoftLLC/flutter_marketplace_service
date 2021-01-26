part of 'brand_cubit.dart';

@immutable
abstract class BrandState {}

class BrandEmptyState extends BrandState {}

class BrandLoadingState extends BrandState {}

class BrandLoadedState extends BrandState {
  final List<BrandModel> banners;
  BrandLoadedState({@required this.banners}) : assert(banners != null);
}

class BrandErrorState extends BrandState {}
