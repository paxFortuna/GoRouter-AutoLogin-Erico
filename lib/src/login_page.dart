import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Login Page',
        style: TextStyle(
          fontSize: 20,
        ),
      )),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login Page',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }
}
