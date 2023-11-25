import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Dude is angry by you',

      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 230, 230, 230),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),

      home: const MyHomePage(title: 'Dude is angry by you'),
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
  int someThing = 5;

  void _incrementCounter() {
    setState(() {
      _counter++;
      someThing++;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Text(
              'Nigga, you touches my dude this times:',
            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const Text(
              'He is angry on this %:',
            ),

            Text(
              '$someThing',
              style: Theme.of(context).textTheme.headlineMedium,
            )

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Why?',
        child: const Icon(Icons.do_not_touch),
      ),

    );
  }
}
