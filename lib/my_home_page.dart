import 'package:flutter/material.dart';
import 'main_title.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}
class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int counterBtn = 0;
  

  void _incrementCounter() {
    setState(() {
      counterBtn++;
      _counter=_counter+2;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: MainTitle(title: widget.title),
      ),
      
      body: Center(

        child:
        
        Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Text(
              'Vous avez cliquez $counterBtn fois',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [              
            Text(
              '$_counter'' + 2 =',
            ),
            Text(
               (_counter + 2).toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],)
           ],
            
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.exposure_plus_2),

      ),
    );
  }
}
