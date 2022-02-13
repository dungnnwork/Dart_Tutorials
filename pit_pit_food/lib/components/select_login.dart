import 'package:flutter/material.dart';
import 'package:pit_pit_food/components/socal_cart.dart';

import '../size_config.dart';

class SelectLogin extends StatelessWidget {
  const SelectLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(12),
        vertical: getProportionateScreenHeight(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocalCart(
                icon: 'assets/icons/flat-color-icons_google.svg',
                press: () {},
              ),
              SocalCart(
                icon: 'assets/icons/brandico_facebook.svg',
                press: () {},
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(
            'or Login with Email',
            style: TextStyle(fontSize: getProportionateScreenWidth(15)),
          ),
        ],
      ),
    );
  }
}
