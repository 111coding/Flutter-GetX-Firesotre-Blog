import 'dart:convert';

import 'package:flutter_blog/domain/user/user_provider.dart';

// FireStore에서 응답되는 데이터를 예쁘게 가공!! => json => Dart 오브젝트
class UserRepository {
  UserProvider _userProvider = UserProvider();
}
