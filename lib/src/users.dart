library users;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/users.model.dart';

class Users {
  Future<List<UserModel>> getList() async {
    try {
      String url = baseUrl + "/users";
      var response = await http.get(url);
      Iterable list = json.decode(response.body);
      return list.map((model) => UserModel.fromJson(model)).toList();
    } catch (e) {
      return List<UserModel>();
    }
  }
}
