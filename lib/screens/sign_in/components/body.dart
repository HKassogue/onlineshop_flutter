import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/screens/sign_in/components/sign_form.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20)
          ),
          child: Column(
            children: [
              Text(
                "Bon retour",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Connectez vous avec votre email\nou continuez avec un réseau social",
                textAlign: TextAlign.center,
              ),
              SignForm()
            ],
          ),
        )
      ),
    );
  }
}

