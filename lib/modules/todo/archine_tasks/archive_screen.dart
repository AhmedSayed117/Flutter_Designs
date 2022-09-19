import 'package:bmi_app/modules/todo/cubit/cuit.dart';
import 'package:bmi_app/modules/todo/cubit/states.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/compunents/comonents.dart';
import '../add_task/add_task_screen.dart';

class ArchiveTasksScreen extends StatelessWidget {
  const ArchiveTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit, TodoStates>(
      listener: (context, state) => {},
      builder: (context, state) {
        var cubit = TodoCubit.get(context);
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
          body: ConditionalBuilder(
            condition: cubit.archivetasks.isNotEmpty,
            builder: (context) => ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  taskInfo(cubit.archivetasks[index], context),
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20.0,
                ),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey,
                  child: const SizedBox(
                    height: 15.0,
                  ),
                ),
              ),
              itemCount: cubit.archivetasks.length,
            ),
            fallback: (context) => fallbackCondition(),
          ),
        );
      },
    );
  }
}
