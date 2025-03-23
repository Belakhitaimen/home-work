import 'dart:io';
/**Find the Longest Word
Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that appears.
 */

void main() {
  print('Enter a sentence:');
  String sentence = stdin.readLineSync()!;

  String longest = findLongestWord(sentence);
  print('The longest word is: $longest');
}

String findLongestWord(String sentence) {
  List<String> words = sentence.split(RegExp(r'\s+'));
  String longestWord = '';

  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }

  return longestWord;
}
