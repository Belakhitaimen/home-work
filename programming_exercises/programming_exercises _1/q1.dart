import 'dart:io';

/**Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur.
 */
import 'dart:io';

void main() {
  print('Enter the first number:');
  num number1 = num.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  num number2 = num.parse(stdin.readLineSync()!);

  print('Enter an operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      print('Result: ${add(number1, number2)}');
      break;
    case '-':
      print('Result: ${subtract(number1, number2)}');
      break;
    case '*':
      print('Result: ${multiply(number1, number2)}');
      break;
    case '/':
      print('Result: ${divide(number1, number2)}');
      break;
    default:
      print('Invalid operator');
  }
}

num add(num number1, num number2) {
  return number1 + number2;
}

num subtract(num number1, num number2) {
  return number1 - number2;
}

num multiply(num number1, num number2) {
  return number1 * number2;
}

num divide(num number1, num number2) {
  if (number2 != 0) {
    return number1 / number2;
  } else {
    print('Cannot divide by zero');
    return double.nan;
  }
}
