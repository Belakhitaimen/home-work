import 'dart:io';

/** 1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers)*/
void main() {
  num number1, number2, result1, result2, result3, result4;
  print('Enter the first number:');
  number1 = num.parse(stdin.readLineSync()!);
  print('Enter the second  number:');
  number2 = num.parse(stdin.readLineSync()!);

  result1 = number1 + number2;
  print('Addition : $number1 + $number2 = $result1');

  result2 = number1 - number2;
  print('Subtraction : $number1 - $number2 = $result2');

  result3 = number1 * number2;
  print('Multiplication : $number1 * $number2 = $result3');

  result4 = number1 / number2;
  print('Division : $number1 / $number2 = $result4');
  print('Addition of multiple numbers:');
  print(additionOfMultipleNumbers());
}

double additionOfMultipleNumbers([
  double num1 = 0,
  double num2 = 0,
  double num3 = 0,
]) {
  double additionOfMultiple = num1 + num2 + num3;
  return additionOfMultiple;
}
