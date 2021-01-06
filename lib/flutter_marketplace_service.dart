library flutter_marketplace_service;

import 'dart:async';
import 'dart:convert';
import 'package:flutter_marketplace_service/models/users.model.dart';
import 'package:http/http.dart' as http;

part "users.dart";

const baseUrl = "http://market.zetsoft.uz/rest/shop-catalog";

class Api {
  // static Future<List<UserModel>> getUsers;
  // () async {
  //   try {
  //     String url = baseUrl + "/users";
  //     var response = await http.get(url);
  //     Iterable list = json.decode(response.body);
  //     return list.map((model) => UserModel.fromJson(model)).toList();
  //   } catch (e) {
  //     return List<UserModel>();
  //   }
  // }
}
