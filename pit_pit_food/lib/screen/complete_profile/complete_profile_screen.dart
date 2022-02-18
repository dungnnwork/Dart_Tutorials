import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/cart/component/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
  static String routeName = "complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đăng ký"),
      ),
      body: Body(),
    );
  }
}
