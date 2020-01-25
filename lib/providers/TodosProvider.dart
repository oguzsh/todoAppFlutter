import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app/models/Todo.dart';

class TodosProvider extends ChangeNotifier {
  final List<Todo> todos = [
    Todo(title: "Drink coke"),
    Todo(title: "Do your homework"),
    Todo(title: "Go to shopping")
  ];

  UnmodifiableListView<Todo> get allTodos => UnmodifiableListView(todos);
  UnmodifiableListView<Todo> get incompleteTodos =>
      UnmodifiableListView(todos.where((todo) => !todo.completed));
  UnmodifiableListView<Todo> get completedTodos =>
      UnmodifiableListView(todos.where((todo) => todo.completed));

  void addTodo(Todo todo) {
    todos.add(todo);
    notifyListeners();
  }

  void toggleTodo(Todo todo) {
    final index = todos.indexOf(todo);
    todos[index].toggleCompleted();
    notifyListeners();
  }

  void removeTodo(Todo todo) {
    todos.remove(todo);
    notifyListeners();
  }
}
