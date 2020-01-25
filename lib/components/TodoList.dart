import 'package:flutter/material.dart';
import 'package:todo_app/models/Todo.dart';
import 'package:todo_app/components/TodoListItem.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  TodoList({@required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenTodos(),
    );
  }

  List<Widget> getChildrenTodos() {
    return todos.map((todo) => TodoListItem(todo: todo)).toList();
  }
}
