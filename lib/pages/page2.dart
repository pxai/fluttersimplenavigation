import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page 2'),
      ),
      body: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back from 2!'),
      ),
    );
  }
}
