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
      title: 'Meine erste Flutter App',
      theme: ThemeData(
 
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Nase Flutter App'),
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
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
    
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      body: Center(
    
        child: Column(
       
          children: [
            const Text('Das ist der Counter'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment', 
      child: const Icon(Icons.add), 
    ),
    FloatingActionButton(onPressed: _decrementCounter)
  ],
),
    );
  }
}
