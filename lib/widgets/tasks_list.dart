import 'package:flutter/material.dart';
import 'package:todoey_practice/models/task_data.dart';
import 'package:todoey_practice/widgets/task_tile.dart';
import 'package:provider/provider.dart';

// タスクのリスト一覧
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // notifyされた際、再ビルドの対象を絞るためのWidget
    // TaskDataインスタンスが更新されるたびにbuilder関数が実行される
    return Consumer<TaskData>(
      // Widget Function(BuildContext, dynamic, Widget)
      // 第2引数：TaskDataインスタンス
      // 第3引数：Consumerコンストラクタにchildとして渡したインスタンス
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
