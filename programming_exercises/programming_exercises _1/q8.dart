/**Sum of List Elements
Write a function that takes a list of numbers and returns the sum of all elements.
Example:
sumList([1, 2, 3, 4, 5]) -> 15
 */

import 'dart:io';

void main() {
  print('Enter numbers separated by spaces:');
  List<num> numbers = stdin
      .readLineSync()!
      .split(' ')
      .map((e) => num.tryParse(e) ?? 0)
      .toList();

  num sum = sumList(numbers);
  print('Sum of elements: $sum');
}

num sumList(List<num> numbers) {
  return numbers.reduce((a, b) => a + b);
}
