import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/components/no_account_text.dart';
import 'package:onlineshop_flutter/screens/forgot_password/components/forgot_pass_form.dart';

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
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    "Récupération",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Veuillez entrer votre email et vous recevrez un\n nouveau mot de passe pour récupérer votre compte",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  ForgotPassForm(),
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
