import 'package:flutter/material.dart';
import 'package:pit_pit_food/routes.dart';
import 'package:pit_pit_food/screen/onboarding/onboarding_screen.dart';

import 'package:pit_pit_food/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PIT PIT FOOD',
      theme: theme(),
      routes: routes,
      initialRoute: Onboarding.routeName,
    );
  }
}
