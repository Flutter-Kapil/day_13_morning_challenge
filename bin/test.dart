import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(lengthen("abcdefg", "ab"), 'abababa');
  });
  test("test case 2", () {
    expect(findBrokenKeys("happy birthday", "hawwy birthday"), ["p"]);
  });
}
