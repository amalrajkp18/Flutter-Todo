import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_model/todo_model.dart';

import '../../main.dart';

class TodoNotifier extends ChangeNotifier {
  List<TodoModel> _todoList = objectBox.todoBox.getAll();

  //todoList returing
  List<TodoModel> get todList {
    return _todoList;
  }

  // add data db
  int create(TodoModel todo) {
    int result = objectBox.todoBox.put(todo);
    _todoList = objectBox.todoBox.getAll();
    notifyListeners();
    return result;
  }

  // update data db
  update(TodoModel updatedTodo) {
    TodoModel? existingTodo = objectBox.todoBox.get(updatedTodo.id);

    if (existingTodo != null) {
      // Modify the existing todo with updated values
      existingTodo.title = updatedTodo.title;
      existingTodo.content = updatedTodo.content;
      // Put the updated todo back into the box
      objectBox.todoBox.put(existingTodo);
      _todoList = objectBox.todoBox.getAll();

      notifyListeners();
    }
  }

  // delete data db
  bool delete(int id) {
    bool result = objectBox.todoBox.remove(id);
    _todoList = objectBox.todoBox.getAll();
    notifyListeners();
    return result;
  }
}
