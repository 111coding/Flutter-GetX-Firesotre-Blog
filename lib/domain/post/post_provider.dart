import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_blog/controller/dto/save_req_dto.dart';
import 'package:flutter_blog/controller/user_controller.dart';
import 'package:get/get.dart';

// 통신
class PostProvider {
  final _collection = "post";
  UserController u = Get.find<UserController>();

  Future<QuerySnapshot> findAll() => FirebaseFirestore.instance
      .collection(_collection)
      .orderBy("created", descending: true)
      .get();

  Future<DocumentSnapshot> save(String title, String content) =>
      FirebaseFirestore.instance
          .collection(_collection)
          .add(SaveReqDto(title, content).toJson())
          .then((v) {
        v.update({"id": v.id});
        return v.get();
      });
}
