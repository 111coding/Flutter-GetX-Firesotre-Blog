import 'package:flutter_blog/domain/post/post.dart';
import 'package:flutter_blog/domain/post/post_repository.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  final PostRepository _postRepository = PostRepository();
  final posts = <Post>[].obs;
  final post = Post().obs;

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<List<Post>> findAll() async {
    List<Post> posts = await _postRepository.findAll();
    this.posts.value = posts;
    return posts;
  }

  Future<void> save(String title, String content) async {
    Post post = await _postRepository.save(title, content);
    if (post.id != null) {
      this.posts.add(post);
    }
  }

  Future<void> findById(String id) async {
    Post post = await _postRepository.findById(id);
    this.post.value = post;
  }

  Future<void> updateById(String id, String title, String content) async =>
      Future.value();
}
