import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_todo/models/tasks_data.dart';
import 'package:today_todo/screens/add_task_screen.dart';
import '../widget/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "المهام اليومية",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Consumer<TasksData>(
              builder: (context, tasksData, child) => Text(
                tasksData.tasks.isNotEmpty
                    ? "لديك ${tasksData.tasks.length} مهام"
                    : "ليس لديك أي مهام اليوم",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TasksList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (_) => SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Consumer<TasksData>(
                    builder: (context, tasksData, child) =>
                        const AddTaskScreen(),
                  )),
            ),
          );
        },
        backgroundColor: Colors.indigo.shade400,
        child: const Icon(Icons.add),
      ),
    );
  }
}
