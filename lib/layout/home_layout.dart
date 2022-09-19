import 'package:bmi_app/modules/todo/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules/todo/cubit/cuit.dart';
class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit, TodoStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = TodoCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.setCurrentIndex(index);
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
        });
  }
}
