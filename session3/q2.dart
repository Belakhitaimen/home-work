/**2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values */

void main() {
  List<String> groceryList = [];
  String item = 'Milk';
  var isAQdded = addGroceryItems(item, groceryList);
  print(groceryList);
  print(item);
}

bool addGroceryItems(String? item, List<String> List) {
  if (item != null) {
    List.add(item);
    return true;
  } else {
    return false;
  }
}

void removeGroceryItems(String item, List<String> List) {
  List.remove(item);
}

void desplayGroceryItems(String item, List<String> List) {
  for (String item in List) {
    print(item);
  }
}
