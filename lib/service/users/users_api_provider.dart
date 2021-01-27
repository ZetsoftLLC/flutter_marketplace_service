library service;

import 'dart:async';
import 'dart:convert';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/models/login_request.dart';
import 'package:flutter_marketplace_service/models/login_response.dart';
import 'package:flutter_marketplace_service/models/message_response.dart';
import 'package:flutter_marketplace_service/models/signup_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

class UsersApiProvider {
  Future<MessageResponse> postSignUp(SignupRequest param) async {
    final response = await Api.post("auth/signup", param.toJson());

    if (response.isSuccess) {
      try {
        //dynamic jsonRes = response.result[0];

        return MessageResponse.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<MessageResponse> postSignUpLogin(SignupRequest param) async {
    final response = await Api.post("auth/signup", param.toJson());

    if (response.isSuccess) {
      try {
        //dynamic jsonRes = response.result[0];

        // LoginResponse loginResponse = await this.postLogin(LoginRequest(
        //   email: param.email,
        //   password: param.password,
        // ));
        // if (loginResponse != null) {
        //   //
        // }

        return MessageResponse.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<LoginResponse> postLogin(LoginRequest param) async {
    final response = await Api.post("auth/login", param.toJson());
    if (response.isSuccess) {
      try {
        //dynamic jsonRes = response.result["data"];
        LoginResponse token = LoginResponse.fromJson(response.result);
        final SharedPreferences prefs = await _prefs;
        prefs.setString('tokenData', json.encode(token.toJson()));

        return token;
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<bool> getLogout() async {
    final response = await Api.get("auth/logout");

    if (response.isSuccess) {
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
