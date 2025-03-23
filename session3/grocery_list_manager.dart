class GroceryListManager {
  final List<String> groceryList = [];
  bool addGroceryItems(String? item) {
    if (item != null) {
      groceryList.add(item);
      return true;
    } else {
      return false;
    }
  }

  void removeGroceryItems(String item) {
    groceryList.remove(item);
  }

  void desplayGroceryItems(String item) {
    for (String item in groceryList) {
      print(item);
    }
  }
}
