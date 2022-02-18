import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/onboarding/components/body.dart';
import 'package:pit_pit_food/size_config.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);
  static String routeName = ' /onboarding';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: const Body(),
    );
  }
}
