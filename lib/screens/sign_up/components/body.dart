import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/components/social_card.dart';
import 'package:onlineshop_flutter/screens/sign_up/components/sign_up_form.dart';

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Text(
                    "Nouveau compte",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Completez ce formulaire pour créer votre compte\nou continuez directement avec un réseau social",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.06),
                  SignUpForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(icon: "assets/icons/google-icon.svg", press: (){}),
                      SocialCard(icon: "assets/icons/facebook-2.svg", press: (){}),
                      SocialCard(icon: "assets/icons/twitter.svg", press: (){})
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Text(
                    "En continuant vous acceptez\nnos termes et conditions d'utilisation",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

