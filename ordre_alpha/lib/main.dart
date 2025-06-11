import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste de prénoms',
      home: const NameListPage(),
    );
  }
}

class NameListPage extends StatefulWidget {
  const NameListPage({super.key});

  @override
  State<NameListPage> createState() => _NameListPageState();
}

class _NameListPageState extends State<NameListPage> {
  final List<String> _originalNames = ['Alice', 'Bob', 'Chloé', 'David', 'Emma'];
  late List<String> _names;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _shuffleNames();
  }

  void _shuffleNames() {
    _names = List<String>.from(_originalNames);
    _names.shuffle(_random);
  }

  void _moveUp(int index) {
    if (index > 0) {
      setState(() {
        final tmp = _names[index - 1];
        _names[index - 1] = _names[index];
        _names[index] = tmp;
        _checkOrder();
      });
    }
  }

  void _moveDown(int index) {
    if (index < _names.length - 1) {
      setState(() {
        final tmp = _names[index + 1];
        _names[index + 1] = _names[index];
        _names[index] = tmp;
        _checkOrder();
      });
    }
  }

  void _checkOrder() {
    if (_names.join() == _originalNames.join()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Bravo !'),
          content: const Text('La liste est dans l\'ordre. On recommence !'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _shuffleNames();
                });
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trier les prénoms')),
      body: ListView.builder(
        itemCount: _names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_names[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_upward),
                  onPressed: index == 0 ? null : () => _moveUp(index),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_downward),
                  onPressed: index == _names.length - 1 ? null : () => _moveDown(index),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}