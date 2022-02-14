import 'package:flutter/material.dart';

// リスト1つ分
class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.'),
      trailing: TaskCheckbox(),
    );
  }
}

// チェックボックス
class TaskCheckbox extends StatefulWidget {

  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: false,
      onChanged: (bool? value) {},
    );
  }
}