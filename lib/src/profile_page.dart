import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user.dart';

class ProfilePage extends StatelessWidget {
  final String name;

  const ProfilePage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Page', style: GoogleFonts.inter()),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade200,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person_sharp,
                  size: 70,
                ),
              ),
              const Divider(
                indent: 100,
                endIndent: 100,
                thickness: 2,
              ),

              ElevatedButton(
                onPressed: () {
                  context.goNamed('edit_profile',
                      params: {'name': name},
                      extra: User(name: name, email: 'dummy@email.com'));
                },
                child: const Text('To EditProfile'),
              ),
            ],
          ),
        ));
  }
}
