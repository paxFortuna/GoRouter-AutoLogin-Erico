import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_demo/src/about_page.dart';
import 'package:gorouter_demo/src/edit_profile_page.dart';
import 'package:gorouter_demo/src/login_page.dart';
import 'package:gorouter_demo/src/profile_page.dart';

import 'src/main_page.dart';
import 'src/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter router = GoRouter(
    routes: [
      // top leve router
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/',
        name: 'main_page',
        builder: (context, state) {
          return const MainPage();
        },
        // sub level router
        routes: [
          GoRoute(
            path: 'about', // 주의: '/about' 아님,
            name: 'about',
            builder: (context, state) {
              return const AboutPage();
            },
          ),
          // sub lebel : parameter 전달
          GoRoute(
            path: 'profile/:name',
            name: 'profile',
            builder: (context, state) {
              String name = state.params['name'] ?? 'no name';
              return ProfilePage(name: name);
            },
            routes: [
              GoRoute(
                path: 'edit_profile', // 주의: '/about' 아님,
                name: 'edit_profile',
                builder: (context, state) {
                  Object? object = state.extra;

                  if (object != null && object is User) {
                    return EditProfilePage(user: object);
                  } else {
                    return const EditProfilePage(
                      user: User(name: 'no name', email: 'no eamil'),
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    ],
    initialLocation: '/login',
    debugLogDiagnostics: true,
    // 뒤로 가기 중지
    routerNeglect: true,
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
