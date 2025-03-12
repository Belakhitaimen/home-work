import 'dart:io';

/**If-Else with Grades
Objective: Practice conditional statements with integer values.
Instructions:
- Create an integer variable marks.
- If marks is 70 or higher, print 'Passed', otherwise print 'Failed' */
void main() {
  print('marks : ');
  int marks = int.parse(stdin.readLineSync()!);
  if (marks >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
