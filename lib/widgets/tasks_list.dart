import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks; // 아래 _TasksListState에서 이 변수는 widget으로 접근 가능.
  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool checkboxState) {
              // 위에 type은 써도 되고 안써도 됨.
              setState(() {
                // isChecked = checkboxState;
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length, // necessary
    );
  }
}
