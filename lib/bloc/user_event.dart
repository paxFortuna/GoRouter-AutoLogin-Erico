

import 'package:equatable/equatable.dart';
//part of 'user_bloc.part';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class SignIn extends UserEvent {
  final String email;
  final String password;

  const SignIn({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class SignOut extends UserEvent {}

class CheckSignInStatus extends UserEvent {}
