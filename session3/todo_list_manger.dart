import 'todo.dart';

class TodoListManger {
  final List<TodoItem> todos = [];
  addTodoItem(TodoItem item) {
    todos.add(item);
  }

  removeTodoItem(TodoItem item) {
    for (var todo in todos) {
      if (todo.description == item.description) {
        todos.remove(item);
      }
    }
  }

  updateTodoItem(TodoItem item) {
    for (var todo in todos) {
      if (todo == item) {
        todo.isDone = item.isDone;
      }
    }
  }
}
