// FireStore와 통신
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_blog/domain/user/user.dart';

class UserProvider {
  final _collection = "users"; //FireStore Collection 이름

  Future<DocumentReference> join(User newUser) => Future.value();

  Future<QuerySnapshot> checkEmail(String email) => Future.value();

  Future<QuerySnapshot> checkUsername(String username) => Future.value();
}
