import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineshop_flutter/models/Cart.dart';
import 'package:onlineshop_flutter/screens/cart/components/cart_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: Key(demoCarts[0].product.id.toString()),
          direction: DismissDirection.endToStart,
          background: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xFFFFE6E6),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Spacer(),
                SvgPicture.asset("assets/icons/Trash.svg"),
              ],
            ),
          ),
          child: CartCard(cart: demoCarts[0])
        ),
      ],
    );
  }
}