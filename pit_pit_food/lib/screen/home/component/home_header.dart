import 'package:flutter/material.dart';
import 'package:pit_pit_food/screen/cart/cart_screen.dart';
import 'package:pit_pit_food/screen/home/component/icon_bottom_with_counter.dart';
import 'package:pit_pit_food/screen/home/component/search_field.dart';

import 'package:pit_pit_food/size_config.dart';

class HomeHaeder extends StatelessWidget {
  const HomeHaeder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SearchField(),
          IconBottomWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBottomWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            numOfItem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
