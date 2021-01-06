library Service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/users.model.dart';

class UsersService {
  Future<List<UserModel>> getUsers() async {
    var api = new Api();
    return await api.get<UserModel>("/users");
  }
}
