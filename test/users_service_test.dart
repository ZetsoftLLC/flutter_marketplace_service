import 'package:flutter_marketplace_service/models/login_request.dart';
import 'package:flutter_marketplace_service/models/signup_request.dart';
import 'package:flutter_marketplace_service/service/users/users_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('users signup', () async {
    UsersRepository repo = UsersRepository();

    var param = new SignupRequest();
    param.name = "Test111";
    param.email = "teee111222111@mail.ru";
    param.password = "123456";
    param.passowrdConfirmation = "123456";

    var res = await repo.signup(param);

    // ignore: unnecessary_statements
    assert(res != null);
  });

  test('users login', () async {
    UsersRepository repo = UsersRepository();

    var param = new LoginRequest();
    param.email = "teee111222111@mail.ru";
    param.password = "123456";
    param.rememberMe = false;

    var res = await repo.login(param);

    // ignore: unnecessary_statements
    assert(res != null);
    // expect(List<BrandModel>, banners);
  });
}
