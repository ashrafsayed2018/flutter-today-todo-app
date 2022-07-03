import 'package:flutter/material.dart';
import 'package:today_todo/models/task.dart';
import 'package:today_todo/widget/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'الذهاب الى التسوق'),
    Task(name: ' شراء جلسة تعليمية'),
    Task(name: ' شراء  هدايا جديدة'),
    Task(name: ' شراء جلسة تعليمية'),
    Task(name: ' شراء جلسة تعليمية'),
    Task(name: ' شراء جلسة تعليمية'),
    Task(name: 'الذهاب الى التسوق'),
    Task(name: ' شراء جلسة تعليمية'),
    Task(name: ' شراء  هدايا جديدة'),
    Task(name: ' شراء جلسة تعليمية'),
    Task(name: ' شراء جلسة تعليمية'),
    Task(name: ' شراء جلسة تعليمية'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) => TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (bool? checkboxState) {
          setState(() {
            tasks[index].isDone = checkboxState!;
          });
        },
      ),
    );
  }
}
