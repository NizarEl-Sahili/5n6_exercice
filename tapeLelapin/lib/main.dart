import 'dart:math';

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
  int _indexLapin = Random().nextInt(3);

  int _flaps = 0;
  int _pafs = 0;



  @override
  Widget build(BuildContext context) {
    print("Index Lapin: $_indexLapin");
 //region Buttons
    var b0 = MaterialButton(
      onPressed: (){
        print("bouton 0");
        if(this._indexLapin==0)
          setState(() { _pafs++;  });
        else
          setState(() {   _flaps++;   });
        this._indexLapin = Random().nextInt(4);
        },
      child: Text(this._indexLapin==0 ? 'Lapin' : 'Taupe')
    );
    var b1 = MaterialButton(
      onPressed: (){
        print("bouton 1");
        if(this._indexLapin==1)
        setState(() { _pafs++;  });
      else
        setState(() {   _flaps++;   });
        this._indexLapin = Random().nextInt(4);
      },
      child: Text(this._indexLapin==1 ? 'Lapin' : 'Taupe'),
    );
    var b2 = MaterialButton(
      onPressed: (){
        print("bouton 2");
        if(this._indexLapin==2)
        setState(() { _pafs++;  });
      else
        setState(() {   _flaps++;   });
      },
      child: Text(this._indexLapin==2 ? 'Lapin' : 'Taupe'),
    );
    var b3 = MaterialButton(
      onPressed: (){
        print("bouton 3");
        if(this._indexLapin==3)
        setState(() { _pafs++;  });
      else
        setState(() {   _flaps++;   });
      this._indexLapin = Random().nextInt(4);
      },
      child: Text(this._indexLapin==3 ? 'Lapin' : 'Taupe'),
    );
//endregion
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Tape Le Lapin"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Pafs: $_pafs ",style: TextStyle(color: Colors.green,fontSize: 20)),
                Text("Flops: $_flaps",style: TextStyle(color: Colors.red,fontSize: 20)),

              ],
            ),
             Text('Tape le lapin',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [b1,
                b2,

              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               b3,

                b0
              ],
            ),
          ],
        ),
      ),

    );
  }
}
