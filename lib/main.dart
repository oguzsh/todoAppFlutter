import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/TodosProvider.dart';
import 'package:todo_app/screens/TodoScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        title: "Todos",
        theme: ThemeData.dark(),
        home: TodoScreen(),
      ),
    );
  }
}
