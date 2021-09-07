import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/screens/sign_up/sign_up_screen.dart';

import '../constantes.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Vous n'avez pas un compte ?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Créez-en",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                decoration: TextDecoration.underline,
                color: kPrimaryColor
            ),
          ),
        )
      ],
    );
  }
}