import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
        ],
      )
    );
  }
}