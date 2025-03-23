import 'dart:io';

/**Check Leap Year
Write a function that determines if a given year is a leap year.
A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400.
 */

void main() {
  print('Enter a year:');
  int year = int.parse(stdin.readLineSync()!);

  leapYear(year);
}

void leapYear(int year) {
  if (isLeapYear(year)) {
    print('$year is a Leap Year.');
  } else {
    print('$year is not a Leap Year.');
  }
}

bool isLeapYear(int year) {
  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}
