import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("회원 번호 : "),
            Text("회원 유저네임 : "),
            Text("회원 이메일 : "),
            Text("회원 가입날짜 : "),
          ],
        ),
      ),
    );
  }
}
