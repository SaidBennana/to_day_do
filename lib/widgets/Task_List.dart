import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day_do/module/Task_Data.dart';
import 'package:to_day_do/widgets/Task_Card.dart';

class Task_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Task_Data>(
      builder: (context, Task_data, child) {
        return ListView.builder(
          itemCount: Task_data.tasks.length,
          itemBuilder: (context, index) {
            return Task_Card(
              is_Chacke: Task_data.tasks[index].isDone,
              name: Task_data.tasks[index].name,
              chackBoxCall: (NewValue) {
                Task_data.tasks[index].DonChange();
              },
            );
          },
        );
      },
    );
  }
}
