import 'package:flutter/material.dart';
import 'package:today_todo/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tody todo app ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TasksScreen(),
    );
  }
}
