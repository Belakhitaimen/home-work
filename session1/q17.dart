/**If you need a variable that can hold any type of value and may change during
execution, which data type would you use? Write a code example to show this */

/**dynamic is another type in Dart that allows changing the variable type at runtime.
 *  This means you can assign a value of one type at runtime and then assign a value
 *  of a different type to the same variable. */
void main() {
  dynamic variable = 'hello dart';
  variable = 2025;
  variable = true;
  print(variable);
}
