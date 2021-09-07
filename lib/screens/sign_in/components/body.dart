import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/components/no_account_text.dart';
import 'package:onlineshop_flutter/components/social_card.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
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
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                SignForm(),
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
                NoAccountText()
              ],
            ),
          ),
        )
      ),
    );
  }
}

