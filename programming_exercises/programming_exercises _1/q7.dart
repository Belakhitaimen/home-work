/**Reverse a String
Write a function that takes a string as input and returns the string reversed.
 */
void main() {
  String originalString = "Hello, World!";

  // Split the string into individual characters
  List<String> characters = originalString.split('');

  // Reverse the order and join the characters
  String reversedString = characters.reversed.join();

  print(reversedString); // Output: !dlroW ,olleH
}
