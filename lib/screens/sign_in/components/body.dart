import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/components/costum_suffix_icon.dart';

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

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField()
        ],
      )
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: "Password",
              hintText: "Entrez votre mot de passe",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg",)
          ),
        );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Entrez votre adresse email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",)
          ),
        );
  }
}
