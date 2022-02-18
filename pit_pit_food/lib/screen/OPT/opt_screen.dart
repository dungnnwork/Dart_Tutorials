import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/OPT/component/body.dart';

class OPTScreen extends StatelessWidget {
  const OPTScreen({Key? key}) : super(key: key);
  static String routeName = "/opt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mã xác minh OPT"),
      ),
      body: const Body(),
    );
  }
}
