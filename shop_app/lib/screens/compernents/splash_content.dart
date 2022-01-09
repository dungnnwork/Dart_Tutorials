import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    required Key key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: getProportionalScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, textAlign: TextAlign.center),
        Spacer(),
        Image.asset(
          image,
          height: getProportionalScreenHeight(265),
          width: getProportionalScreenWidth(235),
        ),
      ],
    );
  }
}
