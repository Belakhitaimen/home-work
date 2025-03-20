import 'dart:io';

/** 1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers)*/
void main() {
  print('enter the first number');
  num number1 = num.parse(stdin.readLineSync()!);
  print('enter the second number');
  num number2 = num.parse(stdin.readLineSync()!);
}

void add(num number1, num number2, [num number3 = 0]) {
  var result = number1 + number2 + number3;
  print(result);
}

void subtract(num number1, num number2) {
  var result = number1 - number2;
  print(result);
}

void multiply(num number1, num number2, [num number3 = 1]) {
  var result = number1 * number2 * number3;
  print(result);
}

void divide(num number1, num number2) {
  if (number2 != 0) {
    var result = number1 / number2;
    print(result);
  } else {
    print('cannt divide by zero');
  }
}
