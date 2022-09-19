import 'package:bmi_app/shared/compunents/comonents.dart';
import 'package:bmi_app/shared/network/local/sqflitemodel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTasksScreen extends StatefulWidget {
  AddTasksScreen({Key? key}) : super(key: key);

  @override
  State<AddTasksScreen> createState() => _AddTasksScreenState();
}

class _AddTasksScreenState extends State<AddTasksScreen> {
  var formKey = GlobalKey<FormState>();
  //title,date,time,status

  var title = TextEditingController();
  var date = TextEditingController();
  var time = TextEditingController();

  late DatabaseModel obj = DatabaseModel();

  @override
  void initState() {

    super.initState();
    obj.createDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Task',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            DatabaseModel.insertDataBase(
              date : date.text,
              time : time.text,
              title : title.text,
            );
          }
        },
        mini: true,
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                //title,date,time,status
                children: [
                  DefaultInputField(
                    controller: title,
                    type: TextInputType.text,
                    text: 'Enter title of task',
                    prefixIcon: Icons.title,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "title cant be Empty !";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  DefaultInputField(
                    onTap: (){
                      showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.parse('2022-11-01'),
                      ).then((value) {
                        print(DateFormat.yMMMd().format(value!));
                        date.text = DateFormat.yMMMd().format(value).toString();
                      }).catchError((onError){
                        print('error when insert date : ${onError.toString()}');
                      });
                    },
                    controller: date,
                    type: TextInputType.datetime,
                    text: 'select date of task',
                    prefixIcon: Icons.calendar_today,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "date cant be Empty !";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  DefaultInputField(
                    onTap: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      ).then((value) {
                        print(value?.format(context));
                        time.text = value!.format(context).toString();
                      }).catchError((onError) {
                        print('error when insert time : ${onError.toString()}');
                      });
                    },
                    controller: time,
                    type: TextInputType.datetime,
                    text: 'select time of task',
                    prefixIcon: Icons.watch_later_outlined,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "time cant be Empty !";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
