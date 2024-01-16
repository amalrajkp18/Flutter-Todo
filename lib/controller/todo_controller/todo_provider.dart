import 'package:flutter/material.dart';

import 'todo_notifier.dart';

class TodoProvider extends InheritedWidget {
  const TodoProvider(
      {super.key, required this.todoNotifier, required super.child});

  final TodoNotifier todoNotifier;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return todoNotifier != (oldWidget as TodoProvider).todoNotifier;
  }

  static TodoProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TodoProvider>()!;
  }
}
