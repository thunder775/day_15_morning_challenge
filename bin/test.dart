import 'package:test/test.dart';
import 'main.dart';
main() {
  test('posNegSort', () {
    expect(posNegSort([6, 3, -2, 5, -8, 2, -2]), [2, 3, -2, 5, -8, 6, -2]);
  });
  test('karaca,s Encryption', () {
    expect(karaca("apple"), "1lpp0aca");
  });
  test('karaca,s Encryption', () {
    expect(karaca("mango"), "2gn0maca");
  });
}
