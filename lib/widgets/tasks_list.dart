import 'package:flutter/material.dart';
import 'package:todoey_practice/models/task_data.dart';
import 'package:todoey_practice/widgets/task_tile.dart';
import 'package:provider/provider.dart';

// タスクのリスト一覧
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          checkboxCallback: (checkboxState) {
            // setState(() {
            //   widget.tasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
