import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_todo/models/tasks_data.dart';
import 'package:today_todo/widget/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child) => ListView.builder(
        itemCount: tasksData.tasks.length,
        itemBuilder: (context, index) => TaskTile(
          taskTitle: tasksData.tasks[index].name,
          isChecked: tasksData.tasks[index].isDone,
          checkboxCallback: (bool? checkboxState) {
            tasksData.updateTask(tasksData.tasks[index]);
          },
          listTileDeleteCallback: () {
            tasksData.deleteTask(tasksData.tasks[index]);
          },
        ),
      ),
    );
  }
}
