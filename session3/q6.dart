/**6. Working with Maps - Student Details:
- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair */

void main() {
  Map<String, String> student = {
    "name": "Aymen Aissa",
    "age": '28',
    "grade": "A",
  };

  print("Initial Student Map: $student");

  student["address"] = "algeria";
  print("After adding address:$student");

  student["grade"] = "B";
  print("After updating grade:$student");

  student.remove("age");
  print("After removing age:$student");
}
