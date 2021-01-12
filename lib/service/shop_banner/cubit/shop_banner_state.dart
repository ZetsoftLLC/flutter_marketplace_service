part of 'shop_banner_cubit.dart';

@immutable
abstract class ShopBannerState {}

class ShopBannerEmptyState extends ShopBannerState {}

class ShopBannerLoadingState extends ShopBannerState {}

class ShopBannerLoadedState extends ShopBannerState {
  final List<dynamic> banners;
  ShopBannerLoadedState({@required this.banners}) : assert(banners != null);
}

class ShopBannerErrorState extends ShopBannerState {}
