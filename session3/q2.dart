/**2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values */

void main() {
  List<String> groceryList = [
    'coffee',
    'tea',
    'candies',
    'nuts',
    'snack mixes',
  ];
  groceryList.add('seafood');
  groceryList.remove('nuts');
  print('Grocery items : $groceryList');

  addGroceryItems(groceryList: groceryList, items: '');
  print('Updated Grocery List: $groceryList');
}

//String addGroceryItems({required String items}) {
//  String updateGroceryitems = items;
//  return updateGroceryitems;
//}

void addGroceryItems({
  required List<String> groceryList,
  required String items,
}) {
  groceryList.add(items);
}
