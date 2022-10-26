import 'package:gorouter_demo/src/user.dart';

abstract class Services {

  static User? getUser({required String email, required String token}){
    return User(
      name: 'Jennie Kim', email: 'jennie.kim@blackpink.com', token: token
    );
  }

  static String? getToken({required String email, required String password}) {
    if(email == 'jennie.kim@blackpink.com' && password == '123456'){
      return 'ASKDFG2137fbz';
    }
    return null;
  }

  static bool isTokenVaild(String token) {
    return true;
  }

}