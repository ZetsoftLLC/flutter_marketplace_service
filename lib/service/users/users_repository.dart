import 'package:flutter_marketplace_service/models/login_request.dart';
import 'package:flutter_marketplace_service/models/login_response.dart';
import 'package:flutter_marketplace_service/models/message_response.dart';
import 'package:flutter_marketplace_service/models/signup_request.dart';
import 'package:flutter_marketplace_service/service/users/users_api_provider.dart';

class UsersRepository {
  UsersApiProvider _provider = UsersApiProvider();

  Future<MessageResponse> signup(SignupRequest param) =>
      _provider.postSignUp(param);

  Future<MessageResponse> signupLogin(SignupRequest param) =>
      _provider.postSignUpLogin(param);

  Future<LoginResponse> login(LoginRequest param) => _provider.postLogin(param);

  Future<bool> logout() => _provider.getLogout();
}
