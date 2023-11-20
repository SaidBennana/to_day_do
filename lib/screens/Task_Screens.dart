import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day_do/screens/Add_Screen.dart';
import 'package:to_day_do/widgets/Task_List.dart';
import '../module/Task_Data.dart';
import '../module/tasks.dart';

class Task_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Add_Screen(add_Fun: (value) {
                  // tasks.add(Tasks(name: value!));
                  Provider.of<Task_Data>(context)
                      .tasks
                      .add(Tasks(name: value!));
                }),
              ),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal[400],
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "To Day Do",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Tasks : ${Provider.of<Task_Data>(context).tasks.length}",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Task_list(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
