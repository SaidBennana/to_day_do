import 'package:flutter/material.dart';
import 'package:to_day_do/module/tasks.dart';

class Task_Data extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(name: "said"),
    Tasks(name: "said"),
    Tasks(name: "said"),
  ];

  void Add_task(String task) {
    tasks.add(Tasks(name: task));
    notifyListeners();
  }
}
