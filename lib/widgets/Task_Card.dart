import 'package:flutter/material.dart';

class Task_Card extends StatelessWidget {
  Task_Card({super.key, this.is_Chacke, this.name, required this.chackBoxCall});
  final bool? is_Chacke;
  final String? name;
  final void Function(bool?) chackBoxCall;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name!,
        style: TextStyle(
            decoration: is_Chacke! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: is_Chacke,
        onChanged: chackBoxCall,
      ),
    );
  }
}
