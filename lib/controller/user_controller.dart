import 'package:flutter_blog/domain/user/user.dart';
import 'package:flutter_blog/domain/user/user_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs; // UI가 관찰 가능한 변수 => 변경 => UI가 자동 업데이트
  final principal = User().obs;

  Future<int> join(String email, String password, String username) async => 1;

  Future<int> checkEmail(String email) async => 1;

  Future<int> checkUsername(String username) async => 1;
}
