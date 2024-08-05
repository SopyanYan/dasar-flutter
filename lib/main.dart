import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'belajar flutter',
      theme: ThemeData(primaryColor: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

 double _getFontSize(){
  return (_counter * 2).clamp(20, 100).toDouble();
 },
 
  Widget build(BuildContext context){
  

    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hitungan ke :'),
            Text('$_counter', style: TextStyle(
              fontSize: _getFontSize(),
            )
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  incrementCounter();
                },
                child: Icon(Icons.add),
              ),
            ),

            Container(
              child: TextButton(
                onPressed: (){
                  decrementCounter();
                },
                child: Icon(Icons.remove),
              ),
            )


          ],
        ),
      )
    );
  }
}
