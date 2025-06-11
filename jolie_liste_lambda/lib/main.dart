import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fibonacci Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const FibonacciPage(),
    );
  }
}

class FibonacciPage extends StatelessWidget {
  const FibonacciPage({super.key});

  // Génère la suite de Fibonacci jusqu'à n éléments avec une expression lambda
  List<int> fibonacci(int n) {
    List<int> fib = [0, 1];
    List.generate(n - 2, (i) => fib.add(fib[i] + fib[i + 1]));
    return fib.take(n).toList();
  }

  @override
  Widget build(BuildContext context) {
    final fibList = fibonacci(12);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Suite de Fibonacci'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: fibList.length,
        itemBuilder: (context, index) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Colors.deepPurple, width: 2),
          ),
          color: Colors.deepPurple.shade50,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Text(
                '${fibList[index]}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}  