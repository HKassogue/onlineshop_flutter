import 'package:flutter/material.dart';

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
          onTap: (){},
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