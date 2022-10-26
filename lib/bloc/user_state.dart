

import 'package:equatable/equatable.dart';

import '../src/user.dart';

//part of 'user_bloc.part';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserSignedOut extends UserState{}

class UserSignedIn extends UserState {
  final User user;

  UserSignedIn(this.user);

  @override
  List<Object> get props => [];

}