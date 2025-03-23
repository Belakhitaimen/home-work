class TodoItem {
  final String description;
  final String data;
  bool isDone;
  TodoItem({
    required this.description,
    required this.data,
    this.isDone = false,
  });
}
