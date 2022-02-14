import 'package:flutter/material.dart';
import 'package:todoey_practice/widgets/task_tile.dart';
import 'package:todoey_practice/models/task.dart';

// タスクのリスト一覧
class TasksList extends StatefulWidget {

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
        TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
        TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,),
      ],
    );
  }
}