import 'package:flutter/material.dart';
import 'package:todolist/utils/todo_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List toDoList = [
    ['Learn Flutter', false],
    ['Create Project', false],
    ['Watching Windah Basudara', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Text('Simple ToDo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index) {
          return TodoList(taskName: toDoList[index][0]);
        },
      ),
    );
  }
}
