import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:today_todo/models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function addTaskCallback;
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "اضافة مهمه",
            style: TextStyle(
              fontSize: 30,
              color: Colors.indigo.shade400,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: textController,
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal.shade600,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              textStyle: const TextStyle(color: Colors.white),
            ),
            child: const Text(
              "اضافه",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              final task = textController.text;
              if (task.isNotEmpty) {
                Provider.of<TasksData>(context, listen: false).addTask(task);
                textController.clear();
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
