import 'package:bloc/bloc.dart';
import 'package:bmi_app/modules/counter/counter.dart';
import 'package:bmi_app/modules/login/login_page.dart';
import 'package:bmi_app/modules/todo/cubit/cuit.dart';
import 'package:bmi_app/shared/compunents/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'layout/home_layout.dart';
import 'modules/bmi/Bmi_screen.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(
          create: (BuildContext context) => TodoCubit()..createDataBase(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeLayout(),
      ),
    );
  }
}
