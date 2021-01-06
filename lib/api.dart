library api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'BaseResponse.dart';
import 'config.dart';

class Api {
  Future<List<T>> get<T>(String path) async {
    try {
      var headers = <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      };

      var response = await http.get(baseUrl + path, headers: headers);
      Iterable list = json.decode(response.body);

      return list
          .map((model) => (T as BaseResponse).fromJson(model) as T)
          .toList();
    } catch (e) {
      return List<T>();
    }
  }

  Future<List<TResult>> post<T, TResult>(T value, String path) async {
    try {
      var headers = <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      };

      var data = jsonEncode((T as BaseResponse).toJson());
      var response =
          await http.post(baseUrl + path, headers: headers, body: data);

      Iterable list = json.decode(response.body);

      return list
          .map((model) => (TResult as BaseResponse).fromJson(model) as TResult)
          .toList();
    } catch (e) {
      return List<TResult>();
    }
  }
}
