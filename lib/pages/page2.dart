import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String? name;
  const Page2({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 2 $name"),
      ),
      body: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back from 3!'),
      ),
    );
  }
}
