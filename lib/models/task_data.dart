import 'package:flutter/foundation.dart';
import 'package:todoey_practice/models/task.dart';
import 'dart:collection';

// 変更通知機能
// notifyListenersが使えるようになり、変更を監視しているWidgetに変更が通知される
class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy bread'),
  ];

  // 外部からのアクセスを制限する
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  // リストを追加
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}
