import 'package:flutter_blog/controller/user_controller.dart';
import 'package:get/get.dart';

// 통신
class PostProvider {
  final _collection = "post";
  UserController u = Get.find<UserController>();
}