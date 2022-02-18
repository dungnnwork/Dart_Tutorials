import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/forgot_password_screen/component/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trở lại",
        ),
      ),
      body: Body(),
    );
  }
}
