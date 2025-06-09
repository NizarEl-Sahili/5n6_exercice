import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
     body: SingleChildScrollView(
        child: Column(
          children: [





            Padding(
              padding: EdgeInsets.all(16.0), // Premier padding
              child: SizedBox(height: 200, child: Container(color: Colors.green)),
            ),
            SizedBox(height: 200, child: Container(color: Colors.teal)),
            SizedBox(height: 200, child: Container(color: Colors.amber)),
            SizedBox(height: 200, child: Container(color: Colors.blue)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0), // Deuxième padding
              child: SizedBox(height: 200, child: Container(color: Colors.black)),
            ),
            SizedBox(height: 200, child: Container(color: Colors.purple)),
            SizedBox(height: 200, child: Container(color: Colors.pink)),
            SizedBox(height: 200, child: Container(color: Colors.brown)),
            Padding(
              padding: EdgeInsets.only(left: 24.0, top: 40.0), // Troisième padding
              child: SizedBox(height: 200, child: Container(color: Colors.red)),
            ),
            SizedBox(height: 200, child: Container(color: Colors.orange)),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
