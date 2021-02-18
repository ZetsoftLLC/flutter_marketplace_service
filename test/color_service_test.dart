import 'package:flutter_marketplace_service/service/color/color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('color getlist', () async {
    var repo = ColorRepository();
    var res = await repo.getList();
    assert(res != null);
  });
}
