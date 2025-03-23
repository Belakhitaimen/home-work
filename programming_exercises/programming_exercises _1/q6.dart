import 'dart:io';
/**Count Words in a Sentence
Write a function that counts the number of words in a given sentence.
Words are separated by spaces, and the function should ignore extra spaces.
 */

void main() {
  print('Enter a sentence:');
  String sentence = stdin.readLineSync()!;

  int wordCount = countWords(sentence);
  print('Word count: $wordCount');
}

int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  return words.isEmpty ? 0 : words.length;
}
