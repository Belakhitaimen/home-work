import 'dart:io';

/**8. Switch Case, Functions & Default Values
Write a function `getDayType(String day)` that:
- Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
- Returns "Weekday" otherwise.
- If the input is invalid, return "Invalid day".
Call the function inside `main()` and print the result. */

void main() {
  print('Enter the day of the week: ');
  String Daysoftheweek = stdin.readLineSync()!;
  getDayType(Daysoftheweek);
}

void getDayType(String day) {
  switch (day) {
    case 'Saturday':
    case 'Sunday':
      print('Weekend');
      break;
    case 'Monday':
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
    case 'Friday':
      print('Weekday');
      break;
    default:
      print('Invalid day! ');
      break;
  }
}
