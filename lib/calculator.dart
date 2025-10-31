class Calculator {
  int add(int num1, int num2) {
    final result = num1 + num2;
    return result;
  }

  int divide(int num1, int num2) {
    if (num2 == 0) throw Exception("you can't divide by zero");
    final result = num1 ~/ num2;
    return result;
  }
}
