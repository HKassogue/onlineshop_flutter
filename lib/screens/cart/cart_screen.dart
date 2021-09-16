import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/models/Cart.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Votre panier",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} articles",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
