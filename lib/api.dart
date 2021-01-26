library api;

import 'dart:convert';
import 'package:flutter_marketplace_service/config.dart';
import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static post(url, data) async {
    try {
      final dynamic headers = await _getReqHeader();
      final String path = "${Config.baseUrl}/$url/";
      http.Response res = await http.post(path, body: data, headers: headers);
      return _result(res);
    } catch (_) {
      return _result({});
    }
  }

  static put(url, data) async {
    try {
      final dynamic headers = await _getReqHeader();
      final String path = "${Config.baseUrl}/$url/";
      http.Response res = await http.put(path, body: data, headers: headers);
      return _result(res);
    } catch (_) {
      return _result({});
    }
  }

  static delete(url, id) async {
    try {
      final dynamic headers = await _getReqHeader();
      final String path = "${Config.baseUrl}/$url/$id";
      http.Response res = await http.delete(path, headers: headers);
      return _result(res);
    } catch (_) {
      return _result({});
    }
  }

  static get(url) async {
    try {
      final dynamic headers = await _getReqHeader();
      final String path = "${Config.baseUrl}$url";
      http.Response res = await http.get(path, headers: headers);
      return _result(res);
    } catch (_) {
      return _result({});
    }
  }

  static _result(response) {
    int status = response.statusCode != null ? response.statusCode : 404;
    dynamic result;
    if (response.statusCode == 200) result = json.decode(response.body);
    return _Result(result, status);
  }

  static _getReqHeader() async {
    // final prefs = await SharedPreferences.getInstance();
    // var tokenString = prefs.getString('tokenData');
    // var token;
    // if (tokenString != null) {
    //   token = "bearer " + TokenData.fromJson(json.decode(tokenString)).token;
    // }

    final Map<String, String> headers = {
      "Content-type": "application/json",
      "Accept": "application/json",
      // "Authorization": token
    };

    return headers;
  }
}

class _Result {
  final int status;
  final dynamic result;

  _Result(this.result, this.status);
}
