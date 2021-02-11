part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistState extends Equatable{
@override
List<Object> get props => [];
}

class WishlistInitial extends WishlistState {}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState{
  final List<String> data;
  WishlistLoaded({this.data});
}

class WishlistError extends WishlistState{
  final error;
  WishlistError({this.error});
}