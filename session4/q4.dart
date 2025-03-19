import 'dart:io';

/**4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result. */
void main() {
  print('Enter the name of the fruit: ');
  String fruitName = stdin.readLineSync()!;
  int price = getPrice(fruitName);
  if (price == -1) {
    print('Fruit not found.');
  } else {
    print('The price of $fruitName is \$${price}.');
  }
}

Map<String, int> fruitPrices = {
  'Banana': 10,
  'Apricot': 12,
  'Pineapple': 20,
  'Cherry': 50,
};

int getPrice(String fruitName) {
  return fruitPrices[fruitName] ?? -1;
}
