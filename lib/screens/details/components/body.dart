import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/models/Product.dart';
import 'package:onlineshop_flutter/screens/details/components/product_images.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: getProportionateScreenHeight(20)),
        ProductImages(product: product)
      ]
    );
  }
}