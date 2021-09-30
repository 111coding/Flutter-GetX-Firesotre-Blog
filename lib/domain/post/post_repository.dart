import 'package:flutter_blog/controller/user_controller.dart';
import 'package:flutter_blog/domain/post/post_provider.dart';
import 'package:get/get.dart';

// 통신을 호출해서 응답되는 데이터를 예쁘게 가공!! => json => Dart 오브젝트
class PostRepository {
  UserController u = Get.find<UserController>();
  final PostProvider _postProvider = PostProvider();
}
