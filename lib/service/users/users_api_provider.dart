library service;

import 'dart:async';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/login_request.dart';
import 'package:flutter_marketplace_service/models/login_response.dart';
import 'package:flutter_marketplace_service/models/message_response.dart';
import 'package:flutter_marketplace_service/models/signup_request.dart';

class UsersApiProvider {
  Future<MessageResponse> postSignUp(SignupRequest param) async {
    final response = await Api.post("auth/signup", param);

    if (response.status == 200) {
      try {
        dynamic jsonRes = response.result["data"];
        return MessageResponse.fromJson(jsonRes);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<LoginResponse> postLogin(LoginRequest param) async {
    final response = await Api.post("auth/login", param);

    if (response.status == 200) {
      try {
        dynamic jsonRes = response.result["data"];
        return LoginResponse.fromJson(jsonRes);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<bool> getLogout() async {
    final response = await Api.get("auth/logout");

    if (response.status == 200) {
      // try {
      //   dynamic jsonRes = response.result["data"];
      //   return LoginResponse.fromJson(jsonRes);
      // } catch (_) {
      //   return null;
      // }
      return true;
    } else {
      return false;
    }
  }
}
