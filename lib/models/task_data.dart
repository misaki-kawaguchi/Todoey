import 'package:flutter/foundation.dart';
import 'package:todoey_practice/models/task.dart';

// 変更通知機能
// notifyListenersが使えるようになり、変更を監視しているWidgetに変更が通知される
class TaskData with ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy bread'),
  ];
}