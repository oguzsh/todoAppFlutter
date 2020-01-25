import 'package:flutter/material.dart';
import 'package:todo_app/screens/AddTodoScreen.dart';
import 'package:todo_app/tabs/AllTodosTab.dart';
import 'package:todo_app/tabs/CompleteTodosTab.dart';
import 'package:todo_app/tabs/IncompleteTodosTab.dart';

class TodoScreen extends StatefulWidget {
  @override
  TodoScreenState createState() => TodoScreenState();
}

class TodoScreenState extends State<TodoScreen>
    with SingleTickerProviderStateMixin {
  // TabController
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddTodoScreen()));
            },
          )
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(text: 'All'),
            Tab(text: 'Incomplete'),
            Tab(text: 'Complete'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          AllTodosTab(),
          IncompleteTodosTab(),
          CompleteTodosTab()
        ],
      ),
    );
  }
}
