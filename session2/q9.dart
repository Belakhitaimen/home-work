import 'dart:io';

/**Switch Case with Seasons
Objective: Use switch for multiple cases.
Instructions:
- Create an integer variable month with a value between 1 and 12.
- Use a switch statement to print the season based on the month. */
void main() {
  print('Enter a  month:');
  int month = int.parse(stdin.readLineSync()!);
  switch (month) {
    case 12:
    case 1:
    case 2:
      print('winther');
      break;
    case 3:
    case 4:
    case 5:
      print('spring');
      break;
    case 6:
    case 7:
    case 8:
      print('summere');
      break;
    case 9:
    case 10:
    case 11:
      print('fall');
      break;
    default:
      print('Invalid month number! ');
      break;
  }
}
