import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deuxieme extends StatelessWidget {
  // In the constructor, require a Todo.
  const deuxieme({super.key, required this.todo});

  // Declare a field that holds the Todo.
  final String todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(title: Text(todo)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo),
      ),
    );
  }
}