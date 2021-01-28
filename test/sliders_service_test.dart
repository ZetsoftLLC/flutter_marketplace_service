import 'package:flutter_marketplace_service/service/sliders/sliders_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('sliders get', () async {
    var repo = SlidersProvider();
    var res = await repo.getList();
    assert(res != null);
  });
}
