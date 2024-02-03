import 'package:flutter/material.dart';
import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';
import 'pages/page4.dart';

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
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/page3': (context) => const Page3(),
        '/page4': (context) => const Page4(),
      },
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
  void _navigatePage1() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Page1()),
    );
  }

  void _navigatePage2() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const Page2(name: "Passing value to Page 2!")),
    );
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
            TextButton(
                onPressed: () {
                  _navigatePage1();
                },
                child: const Text('Go to Page 1')),
            TextButton(
                onPressed: () {
                  _navigatePage2();
                },
                child: const Text('Go to Page 2')),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page3',
                      arguments: 'My Parameter');
                },
                child: const Text('Go to Page 3')),
            TextButton(
                onPressed: () async {
                  final result = await Navigator.pushNamed(context, '/page4');
                  print(result);
                },
                child: const Text('Go to Page 4')),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
