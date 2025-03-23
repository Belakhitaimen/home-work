import 'dart:io';
/**Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
them.
Ensure that the function correctly identifies prime numbers and handles edge cases where start is
greater than end.
 */

void main() {
  print('Enter the start number:');
  int start = int.parse(stdin.readLineSync()!);

  print('Enter the end number:');
  int end = int.parse(stdin.readLineSync()!);

  List<int> primes = findPrimesInRange(start, end);

  print('Prime numbers between $start and $end: $primes');
}

List<int> findPrimesInRange(int start, int end) {
  if (start > end) {
    int temp = start;
    start = end;
    end = temp;
  }

  List<int> primeNumbers = [];
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primeNumbers.add(i);
    }
  }
  return primeNumbers;
}

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
