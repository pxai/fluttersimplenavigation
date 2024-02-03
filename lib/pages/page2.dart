import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  final String? name;
  const Page2({super.key, this.name});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final GlobalKey<FormState> _signInKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 2"),
      ),
      body: Form(
        key: _signInKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: 'Enter your email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email is required";
                } else if (!value.contains('@')) {
                  return "Invalid email";
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration:
                  const InputDecoration(labelText: 'Enter your password'),
              validator: (value) => value!.isEmpty || value!.length < 4
                  ? "Long password is required"
                  : null,
            ),
            ElevatedButton(
                onPressed: () {
                  debugPrint("Email ${_emailController.text} ");
                  debugPrint("Password ${_passwordController.text} ");
                  if (_signInKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invalid Data')));
                  }
                },
                child: const Text("Submit this")),
          ],
        ),
      ),
    );
  }
}
