library api;

import 'package:flutter_marketplace_service/config.dart';
import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static Future<HttpResult> post(url, data) async {
    try {
      final dynamic headers = await _getReqHeader();
      final String path = "${Config.baseUrl}/$url";
      http.Response res = await http.post(path, body: data, headers: headers);
      return _result(res);
    } catch (_) {
      return _result({});
    }
  }

  static Future<HttpResult> put(url, data) async {
    try {
      final dynamic headers = await _getReqHeader();
      final String path = "${Config.baseUrl}/$url";
      http.Response res = await http.put(path, body: data, headers: headers);
      return _result(res);
    } catch (_) {
      return _result({});
    }
  }

  static Future<HttpResult> delete(url, id) async {
    try {
      final dynamic headers = await _getReqHeader();
      final String path = "${Config.baseUrl}/$url/$id";
      http.Response res = await http.delete(path, headers: headers);
      return _result(res);
    } catch (_) {
      return _result({});
    }
  }

  static Future<HttpResult> get(url) async {
    try {
      final dynamic headers = await _getReqHeader();
      final String path = "${Config.baseUrl}$url";
      http.Response res = await http.get(path, headers: headers);
      return _result(res);
    } catch (_) {
      return _result({});
    }
  }

  static HttpResult _result(response) {
    dynamic result;
    int status = response.statusCode != null ? response.statusCode : 404;

    if (response.statusCode >= 200 && response.statusCode <= 299) {
      result = response.body;
      return HttpResult(true, result, status);
    } else {
      return HttpResult(false, "", status);
    }
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

class HttpResult {
  final bool isSuccess;
  final int status;
  final String result;

  HttpResult(this.isSuccess, this.result, this.status);
}
