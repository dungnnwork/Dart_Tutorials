import 'package:flutter/material.dart';
import 'package:pit_pit_food/constants.dart';
import 'package:pit_pit_food/size_config.dart';

import '../../splash/splash_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      duration,
      () => Navigator.pushNamed(context, SplashScreen.routename),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/Pitfood.png',
              fit: BoxFit.cover,
            ),
            Text(
              'Giao hàng nhanh thần tốc',
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenHeight(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
