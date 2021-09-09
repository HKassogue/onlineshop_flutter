import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/screens/home/components/special_offers.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'home_header.dart';
import 'discount_banner.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: getProportionateScreenHeight(5)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(5)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(5)),
            SpecialOffers()
          ],
        ),
      ),
    );
  }
}