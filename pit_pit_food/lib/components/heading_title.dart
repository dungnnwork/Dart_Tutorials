import 'package:flutter/material.dart';

import '../size_config.dart';

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({
    Key? key,
    required this.labelText,
    required this.titleText,
    required this.child,
  }) : super(key: key);
  final String labelText;
  final String titleText;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: getProportionateScreenHeight(230),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  const Color(0XFF14B77C),
                  const Color(0XFF19F7A7).withOpacity(0.3),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  labelText,
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(40),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  titleText,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            child: child,
          ),
        ],
      ),
    );
  }
}
