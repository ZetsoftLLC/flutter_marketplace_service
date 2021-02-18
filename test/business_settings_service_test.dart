import 'package:flutter_marketplace_service/service/business_settings/business_settings_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('business_settings get', () async {
    var repo = BusinessSettingsRepository();
    var res = await repo.getList();
    assert(res != null);
  });
}
