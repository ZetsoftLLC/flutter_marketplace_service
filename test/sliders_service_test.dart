import 'package:flutter_marketplace_service/service/sliders/sliders_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('sliders get', () async {
    var repo = SlidersRepository();
    var res = await repo.getList();
    assert(res != null);
  });
}
