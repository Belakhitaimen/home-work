/**5. Sets, Functions & Return Statement
Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
Call the function inside `main()` and print the result. */
void main() {
  print(uniqueNamesSet);
}

List<String> names = ['aymen', 'aissa', 'aziz', 'moh', 'aissa', 'aziz'];
Set<String> uniqueNamesSet = uniqueNames(names);
Set<String> uniqueNames(List<String> names) {
  return names.toSet();
}
