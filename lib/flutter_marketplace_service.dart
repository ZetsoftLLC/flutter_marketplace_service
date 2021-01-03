library flutter_marketplace_service;

import 'dart:async';
import 'dart:convert';
import 'package:flutter_marketplace_service/models/users.model.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://jsonplaceholder.typicode.com";

class Api {
  static Future<List<UserModel>> getUsers() async {
    try {
      String url = "https://jsonplaceholder.typicode.com/users";
      var response = await http.get(url);
      Iterable list = json.decode(response.body);
      return list.map((model) => UserModel.fromJson(model)).toList();
    } catch (e) {
      return List<UserModel>();
    }
  }
}
