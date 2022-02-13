import 'package:flutter/material.dart';

import '../size_config.dart';

class SocalCart extends StatelessWidget {
  const SocalCart({
    Key? key,
    required this.press,
    required this.icon,
  }) : super(key: key);
  final String? icon;
  final Function? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(15)),
          margin:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12)),
          width: getProportionateScreenWidth(55),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(icon!)),
    );
  }
}
