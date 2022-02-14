import 'package:flutter/material.dart';

// リスト1つ分
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  TaskTile({required this.isChecked, required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        // onChanged: toggleCheckboxState,
        onChanged: (newValue) {},
      ),
    );
  }
}

// (bool? checkboxState) {
// setState(() {
// isChecked = checkboxState!;
// });
// },
