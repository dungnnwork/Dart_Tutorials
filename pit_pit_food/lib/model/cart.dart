import 'package:pit_pit_food/model/product.dart';

class Cart {
  final Product product;
  final int numOfItem;
  Cart({required this.numOfItem, required this.product});
}

List<Cart> demoCart = [
  Cart(product: demoProduct[0], numOfItem: 2),
  Cart(product: demoProduct[1], numOfItem: 1),
  Cart(product: demoProduct[3], numOfItem: 1),
];
