import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final void Function() listTileDeleteCallback;

  // ignore: use_key_in_widget_constructors
  const TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.listTileDeleteCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal.shade400,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: listTileDeleteCallback,
    );
  }
}
