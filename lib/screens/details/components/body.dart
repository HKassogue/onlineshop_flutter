import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/components/default_button.dart';
import 'package:onlineshop_flutter/models/Product.dart';
import 'package:onlineshop_flutter/screens/details/components/color_dots.dart';
import 'package:onlineshop_flutter/screens/details/components/product_description.dart';
import 'package:onlineshop_flutter/screens/details/components/product_images.dart';
import 'package:onlineshop_flutter/screens/details/components/top_rounded_container.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //SizedBox(height: getProportionateScreenHeight(20)),
        ProductImages(product: product),
        TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: (){},
                ),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                        children: [
                          ColorDots(product: product),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              bottom: getProportionateScreenWidth(40),
                              top: getProportionateScreenWidth(15),
                            ),
                            child: DefaultButton(
                              text: "Ajouter au panier",
                              press: () {},
                            ),
                          )
                        ]
                    )
                ),
              ]
            )
        ),
      ]
    );
  }
}