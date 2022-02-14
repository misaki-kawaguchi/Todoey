import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';
import 'package:todoey_practice/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // データが変わったことを知りWidgetを作り直す(ChangeNotifierProvider)を使って、状態管理を行う
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
