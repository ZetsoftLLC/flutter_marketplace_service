import 'package:flutter_marketplace_service/service/settings/settings_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('settings get', () async {
    var repo = SettingsRepository();
    var res = await repo.getList();
    assert(res != null);
  });
}
