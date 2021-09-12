import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/components/product_card.dart';
import 'package:onlineshop_flutter/models/Product.dart';
import 'package:onlineshop_flutter/screens/details/details_screen.dart';
import 'package:onlineshop_flutter/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Articles populaires", press: () {}),
        SizedBox(height: getProportionateScreenWidth(5)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(context, DetailsScreen.routeName),
                    );
                  return SizedBox.shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
