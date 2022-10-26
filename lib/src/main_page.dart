import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Main Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Main Page',
              style: TextStyle(fontSize: 30),
            ),
            const Divider(
              indent: 100,
              endIndent: 100,
              thickness: 2,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('To Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed('about');
              },
              child: const Text('To About'),
            ),
            const Divider(
              indent: 100,
              endIndent: 100,
              thickness: 2,),
            ElevatedButton(
              onPressed: () {
                context.goNamed('login');
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
