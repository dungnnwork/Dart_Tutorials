import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/home/component/home_header.dart';
import 'package:pit_pit_food/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const HomeHaeder(),
          ],
        ),
      ),
    );
  }
}
