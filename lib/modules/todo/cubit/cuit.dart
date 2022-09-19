import 'package:bmi_app/modules/todo/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import '../archine_tasks/archive_screen.dart';
import '../done_tasks/done_tasks_screen.dart';
import '../tasks/tasks_screen.dart';

class TodoCubit extends Cubit<TodoStates>{
  TodoCubit() : super(TodoInitalizeStates());

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

  static late Database database;
  List<Map> tasks = [];
  List<Map> donetasks = [];
  List<Map> archivetasks = [];
  List<Map> newtasks = [];

  static TodoCubit get(context) => BlocProvider.of(context);

  void setCurrentIndex(int index){
    currentIndex = index;
    emit(TodoGetIndexStates());
  }

  void createDataBase()
  {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (db, version){
        print('database created');
        db.execute('CREATE TABLE Tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time Text , status Text)')
            .then((value) {
          print('table created');
        }).catchError((onError) {
          print('error on table created' + onError.toString());
        });
      },
      onOpen: (db)
      {
        print('database opened');
        getRecords(db);
      },
    ).then((value) {
      database = value;
      emit(TodoCreateDataBaseStates());
    }).catchError((onError){
        print('error on create dataBase' + onError.toString());
    });
  }

    insertDataBase({
    required String title,
    required String date,
    required String time,
    String status = 'New',
  }) async{
    await database.transaction((txn)
    async {
      txn.rawInsert(
          'INSERT INTO Tasks(title,date,time,status) VALUES("$title","$date","$time","$status")')
          .then((value)
      {
          print('$value :insert Successfully');
          emit(TodoInsertDataBaseStates());
          getRecords(database);
      })
          .catchError((catchError) {
        print('insert error ' + catchError.toString());
      });
    });
  }

  void getRecords(database)
  {
    tasks = [];
    newtasks = [];
    donetasks = [];
    archivetasks = [];

    emit(TodoLoadingDataBaseStates());

     database.rawQuery('SELECT * FROM Tasks').then((value)
     {
       tasks = value;
       print(tasks);

       value.forEach((element) {
         if(element['status']=='New') {
           newtasks.add(element);
         } else if(element['status']=='done') {
           donetasks.add(element);
         } else {
           archivetasks.add(element);
         }
       });
       // print(newtasks);
       // print(donetasks);
       // print(archivetasks);
       emit(TodoGetDataBaseStates());
     });
  }


  void updateData ({
  required String status,
  required int id,
}) async{
    database.rawUpdate (
      'UPDATE Tasks SET status = ? WHERE id = ?',
      [status,id],
    ).then((value){
      emit(TodoUpdateDataBaseStates());
      getRecords(database);
    }).catchError((onError){
      print('update error ' + onError.toString());

    });
  }

  void deleteData ({
    required int id,
  }) async{
    database.rawUpdate (
      'DELETE FROM Tasks WHERE id = ?',
      [id],
    ).then((value){
      getRecords(database);
      emit(TodoDeleteDataBaseStates());
    }).catchError((onError){
      print('update error ' + onError.toString());

    });
  }


}