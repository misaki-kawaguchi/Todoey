import 'package:flutter/material.dart';
import 'package:todoey_practice/widgets/task_tile.dart';

// タスクのリスト一覧
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}