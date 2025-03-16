import 'dart:io';
/**8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result */

void main() {
  int lowerBound = 50;
  int upperBound = 100;

  print(
    "Enter a number to check if it is within the range of $lowerBound and $upperBound:",
  );
  int number = int.parse(stdin.readLineSync()!);

  if (number >= lowerBound && number <= upperBound) {
    print(
      "The number $number is within the range of $lowerBound and $upperBound.",
    );
  } else {
    print(
      "The number $number is outside the range of $lowerBound and $upperBound.",
    );
  }
}
