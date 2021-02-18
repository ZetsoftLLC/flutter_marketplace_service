import 'package:flutter_marketplace_service/service/general-settings/general_settings_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('general_settings getlist', () async {
    var repo = GeneralSettingsRepository();
    var res = await repo.getList();
    assert(res != null);
  });
}
