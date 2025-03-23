import 'todo.dart';
import 'todo_list_manger.dart';

/**3. To-Do List App:
Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops */
void main() {
  TodoListManger todoListManger = TodoListManger();
  todoListManger.addTodoItem(
    TodoItem(description: 'buy groceries', data: '2025-03-20'),
  );
}
