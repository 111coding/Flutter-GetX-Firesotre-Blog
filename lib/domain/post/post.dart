import 'package:flutter_blog/domain/user/user.dart';

class Post {
  final String? id;
  final String? title;
  final String? content;
  final User? user;
  final DateTime? created;
  final DateTime? updated;

  Post({
    this.id,
    this.title,
    this.content,
    this.user,
    this.created,
    this.updated,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Post.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        content = json["content"],
        user = User.fromJson(json["user"]),
        created = json["created"].toDate(),
        updated = json["updated"].toDate();
}
