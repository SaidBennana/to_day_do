import 'package:flutter/material.dart';
import 'package:to_day_do/module/Task_Data.dart';
import 'package:to_day_do/screens/Task_Screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Task_Data(),
      child: MaterialApp(
        home: Task_Screen(),
      ),
    );
  }
}
