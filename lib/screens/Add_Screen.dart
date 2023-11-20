import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day_do/module/Task_Data.dart';

class Add_Screen extends StatelessWidget {
  const Add_Screen({super.key, required this.add_Fun});

  final Function(String?) add_Fun;

  @override
  Widget build(BuildContext context) {
    late String taks;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Add Task",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[400]),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: "Enter Your Task"),
            onChanged: (value) {
              taks = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Provider.of<Task_Data>(context, listen: false).Add_task(taks);
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
