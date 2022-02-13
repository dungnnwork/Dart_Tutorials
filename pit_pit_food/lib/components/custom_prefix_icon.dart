import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomPrefixIcon extends StatelessWidget {
  const CustomPrefixIcon({
    Key? key,
    required this.preIcon,
  }) : super(key: key);
  final String? preIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        getProportionateScreenWidth(15),
        getProportionateScreenWidth(15),
        0,
        getProportionateScreenWidth(15),
      ),
      child: SvgPicture.asset(
        preIcon!,
        height: getProportionateScreenHeight(20),
      ),
    );
  }
}
