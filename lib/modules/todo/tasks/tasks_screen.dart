import 'package:bmi_app/shared/compunents/tasks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/compunents/comonents.dart';
import '../add_task/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTasksScreen(),
            ),
          );
        },
        mini: true,
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index) => taskInfo(tasks[index]),
          separatorBuilder: (context,index) =>Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey,
              child: const SizedBox(height: 15.0,),
            ),
          ),
          itemCount: tasks.length,
      ),
    );
  }
}
