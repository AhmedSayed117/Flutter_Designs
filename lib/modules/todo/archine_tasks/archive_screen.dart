import 'package:flutter/material.dart';

class ArchiveTasksScreen extends StatelessWidget {
  const ArchiveTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Archive Tasks',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 40.0,
        ),
      ),
    );
  }
}
