import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listenav/main.dart';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({super.key, required this.todo});

  // Declare a field that holds the Todo.
  final Truc todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(title: Text(todo.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.id.toString()),
      ),
    );
  }
}