import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                setState(() {
                  counter--;
                });
              },
              child: const Icon(
                Icons.remove,
              ),
            ),
            const SizedBox(width: 15.0,),
            Text('$counter',style: const TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.w900,
            ),),
            const SizedBox(width: 15.0,),
            FloatingActionButton(
              mini: true,
              heroTag: 'counter+',
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Icon(
                Icons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
