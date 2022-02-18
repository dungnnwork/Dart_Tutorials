import 'package:flutter/material.dart';
import 'package:pit_pit_food/model/cart.dart';
import 'package:pit_pit_food/screen/cart/component/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CartScreen(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: <Widget>[
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCart.length} items',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
