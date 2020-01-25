import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/TodoList.dart';
import 'package:todo_app/providers/TodosProvider.dart';

class AllTodosTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosProvider>(
        builder: (context, state, child) => TodoList(todos: state.allTodos),
      ),
    );
  }
}
