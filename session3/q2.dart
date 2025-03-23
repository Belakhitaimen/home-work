import 'grocery_list_manager.dart';

/**2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values */

void main() {
  GroceryListManager groceryListManager = GroceryListManager();

  groceryListManager.addGroceryItems('Milk');
  groceryListManager.addGroceryItems('Appel');
  groceryListManager.removeGroceryItems('Milk');
  groceryListManager.desplayGroceryItems("Appel");
}
