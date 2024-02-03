import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page 4'),
      ),
      body: TextButton(
        onPressed: () {
          Navigator.pop(context, "Returned VALUE");
        },
        child: const Text('Go back from 4 with return!'),
      ),
    );
  }
}
