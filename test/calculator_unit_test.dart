import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/calculator.dart';

void main() {
  test("the add method should be return 5 when the number1=2 & number2=3", () {
    //arrange
    final calculator = Calculator();
    const number1 = 2;
    const number2 = 3;
    const expectedResult = 5;

    //act
    final actualResult = calculator.add(number1, number2);

    //assert
    expect(actualResult, expectedResult);
  });
}
