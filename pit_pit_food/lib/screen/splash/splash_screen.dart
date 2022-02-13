import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/splash/component/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routename = '/splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: const Body(),
    );
  }
}
