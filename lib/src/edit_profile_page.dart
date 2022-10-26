import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorouter_demo/bloc/user_bloc.dart';
import 'package:gorouter_demo/src/user.dart';

class EditProfilePage extends StatelessWidget {
  // final User user;
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditProfile Page'),
      ),
      body: Center(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person_sharp,
                  size: 70,
                ),
              ),
                const Divider(
                  indent: 100,
                  endIndent: 100,
                  thickness: 2,
                ),

                Text(
                  state is UserSignedIn ? state.user.name : '-',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(
                  indent: 100,
                  endIndent: 100,
                  thickness: 2,
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    controller: TextEditingController(
                      text: state is UserSignedIn ? state.user.name : '-'
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name'
                    ),
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(),
                  ),
                ),
                const Divider(
                  indent: 100,
                  endIndent: 100,
                  thickness: 2,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    controller: TextEditingController(
                        text: state is UserSignedIn ? state.user.email : '-'
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name'
                    ),
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(),
                  ),
                ),
                const Divider(
                  indent: 100,
                  endIndent: 100,
                  thickness: 2,
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    context.goNamed('main_page');
                  },
                  child: const Text('To Main Page'),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
