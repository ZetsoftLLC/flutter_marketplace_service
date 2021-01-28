part of 'shops_cubit.dart';

@immutable
abstract class ShopsState {}

class ShopsInitial extends ShopsState {}

class ShopsLoadingState extends ShopsInitial {}

class ShopsLoadedState extends ShopsInitial {
  final ShopsResponseModel res;
  ShopsLoadedState({@required this.res}) : assert(res != null);
}

class ShopsErrorState extends ShopsInitial {}
