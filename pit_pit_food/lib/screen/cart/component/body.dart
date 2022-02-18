import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pit_pit_food/model/cart.dart';

import '../../../size_config.dart';
import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(
                demoCart[index].product.id.toString(),
              ),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0XFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: <Widget>[
                    const Spacer(),
                    SvgPicture.asset('assets/icons/Trash.svg')
                  ],
                ),
              ),
              child: CartItemCard(
                cart: demoCart[index],
              ),
              onDismissed: (direction) {
                setState(() {
                  demoCart.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
