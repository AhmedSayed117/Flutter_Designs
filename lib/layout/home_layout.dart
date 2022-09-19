import 'package:bmi_app/modules/todo/archine_tasks/archive_screen.dart';
import 'package:bmi_app/modules/todo/done_tasks/done_tasks_screen.dart';
import 'package:flutter/material.dart';

import '../modules/todo/tasks/tasks_screen.dart';
import '../shared/network/local/sqflitemodel.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;


  List<Widget> screens = [
    const TasksScreen(),
    const DoneTasksScreen(),
    const ArchiveTasksScreen(),
  ];

  List<String> titles = [
    "Tasks",
    "Done Tasks",
    "Archive Tasks",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 26.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outline,
            ),
            label: 'Done Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archive',
          ),
        ],
      ),
    );
  }
}
