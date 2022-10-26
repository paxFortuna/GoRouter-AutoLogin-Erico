import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_demo/bloc/user_bloc.dart';

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
              onPressed: () {
                // context.goNamed('main_page');
                context.read<UserBloc>().add(
                    const SignIn(
                      email: 'jennie.kim@blackpink.com',
                      password: '123456',
                    ),
                );
              },
              child: const Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }
}
