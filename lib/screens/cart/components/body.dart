import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/models/Cart.dart';
import 'package:onlineshop_flutter/screens/cart/components/cart_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartCard(cart: demoCarts[0],)
      ],
    );
  }
}