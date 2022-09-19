import 'package:bmi_app/modules/counter/cubit/cuit.dart';
import 'package:bmi_app/modules/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
         listener: (context,state) {} ,
         builder: (context,state) => Scaffold(
           appBar: AppBar(
             title: const Text("counter",),
           ),
           body: Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 FloatingActionButton(
                   heroTag: 'counter-',
                   mini: true,
                   onPressed: () {
                     CounterCubit.get(context).minus();
                   },
                   child: const Icon(
                     Icons.remove,
                   ),
                 ),
                 const SizedBox(width: 15.0,),
                 Text('${CounterCubit.get(context).counter}',style: const TextStyle(
                   fontSize: 45.0,
                   fontWeight: FontWeight.w900,
                 ),),
                 const SizedBox(width: 15.0,),
                 FloatingActionButton(
                   mini: true,
                   heroTag: 'counter+',
                   onPressed: () {
                     CounterCubit.get(context).plus();
                   },
                   child: const Icon(
                     Icons.add,
                   ),
                 ),
               ],
             ),
           ),
         ),
      ),
    );
  }
}
