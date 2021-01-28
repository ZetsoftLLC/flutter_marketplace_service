import 'package:flutter_marketplace_service/service/settings/settings_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('settings get', () async {
    var repo = SettingsProvider();
    var res = await repo.getList();
    assert(res != null);
  });
}
