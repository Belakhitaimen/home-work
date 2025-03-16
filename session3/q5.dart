/**5. Class Creation and Dot Operator Usage:
Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods */

void main() {
  StudentName aymen = StudentName();
  aymen.attendance = 10;
  aymen.homework = 10;
  print("attendance: ${aymen.attendance}");
  print("homework: ${aymen.homework}");
}

class StudentName {
  double? attendance;
  double? homework;
}
