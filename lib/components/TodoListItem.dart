import 'package:flutter/material.dart';
import 'package:todo_app/models/Todo.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/TodosProvider.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  TodoListItem({@required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: todo.completed,
        onChanged: (bool checked) {
          Provider.of<TodosProvider>(context, listen: false).toggleTodo(todo);
        },
      ),
      title: Text(todo.title),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: () {
          Provider.of<TodosProvider>(context, listen: false).removeTodo(todo);
        },
      ),
    );
  }
}
