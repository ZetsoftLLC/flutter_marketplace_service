library service;

import 'dart:async';
import 'dart:convert';
import 'package:flutter_marketplace_service/api.dart';
import 'package:flutter_marketplace_service/config.dart';
import 'package:flutter_marketplace_service/models/login_request.dart';
import 'package:flutter_marketplace_service/models/login_response.dart';
import 'package:flutter_marketplace_service/models/message_response.dart';
import 'package:flutter_marketplace_service/models/signup_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

class UsersApiProvider {
  Future<MessageResponse> postSignUp(SignupRequest param) async {
    final response =
        await Api.post("${Config.baseUrl}/auth/signup", param.toJson());

    if (response.isSuccess) {
      try {
        return MessageResponse.fromJson(response.result);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<MessageResponse> postSignUpLogin(SignupRequest param) async {
    final response =
        await Api.post("${Config.baseUrl}/auth/signup", param.toJson());

    if (response.isSuccess) {
      try {
        return MessageResponse.fromJson(response.result);
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<LoginResponseModel> postLogin(LoginRequestModel param) async {
    final response =
        await Api.post("${Config.baseUrl}/auth/login", param.toJson());
    if (response.isSuccess) {
      try {
        LoginResponseModel token = LoginResponseModel.fromJson(response.result);
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
    final response = await Api.get("${Config.baseUrl}/auth/logout");

    if (response.isSuccess) {
      return true;
    } else {
      return false;
    }
  }
}
