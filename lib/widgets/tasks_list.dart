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
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
