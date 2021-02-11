import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_marketplace_service/models/wishlist_request.dart';
import 'package:flutter_marketplace_service/network_error/internet_error.dart';
import 'package:flutter_marketplace_service/service/wishlist/wishlist_api_provider.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final WishlistApiProvider wishlistApiProvider;
  List<String> wishList;

  WishlistBloc({this.wishlistApiProvider}) : super(WishlistInitial());

  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    switch(event){
      case WishlistEvent.fetchWishlist:
        yield WishlistLoading();
        try{
          wishList = await wishlistApiProvider.getList(15);
          yield WishlistLoaded(data: wishList);
        } on SocketException{
          yield WishlistError(error: NoInternetException('No Internet'));
        } on HttpException{
          yield WishlistError(error: NoServiceFoundException('No Service found'));
        } on FormatException{
          yield WishlistError(error: InvalidFormatException('Invalid Responce format'));
        } catch(e){
          yield WishlistError(error: UnknownException('Unknown error'));
        }
        break;
    }
  }
}
