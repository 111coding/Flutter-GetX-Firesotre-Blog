import 'package:flutter_blog/domain/user/user.dart';
import 'package:flutter_blog/domain/user/user_provider.dart';

// FireStore에서 응답되는 데이터를 예쁘게 가공!! => json => Dart 오브젝트
class UserRepository {
  UserProvider _userProvider = UserProvider();

  Future<User> join(String email, String password, String username) async =>
      User();

  //중복체크용
  Future<int> checkEmail(String email) async => 1;

  //중복체크용
  Future<int> checkUsername(String username) async => 1;
}
