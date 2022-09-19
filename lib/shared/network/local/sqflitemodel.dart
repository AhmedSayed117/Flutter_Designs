import 'dart:core';

import 'package:bmi_app/shared/compunents/tasks.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseModel {
  static late Database database;

  void createDataBase() async {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (db, version) async {
        print('database created');
        db
            .execute(
                'CREATE TABLE Tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time Text , status Text)')
            .then((value) {
          print('table created');
        }).catchError((onError) {
          print('error on table created' + onError.toString());
        });
      },
      onOpen: (db) {
        print('database opened');
        getRecords(db).then((value){
          tasks = value;
          print(tasks);
        }).catchError((onError){
          print('error on get data' + onError.toString());
        });
      },
    );
  }

  static void insertDataBase({
  required String title,
  required String date,
  required String time,
  String status = 'New',
  }) {
    database.transaction((txn) async {
      txn
          .rawInsert(
              'INSERT INTO Tasks(title,date,time,status) VALUES("$title","$date","$time","$status")')
          .then((value) {
            print('$value :insert Successfully');
      })
          .catchError((catchError) {
        print('insert error ' + catchError.toString());
      });
      return null;
    });
  }
  Future<List<Map>> getRecords(database) async{
    return await database.rawQuery('SELECT * FROM Tasks');
  }
}
