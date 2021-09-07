import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/components/costum_suffix_icon.dart';
import 'package:onlineshop_flutter/components/default_button.dart';
import 'package:onlineshop_flutter/components/form_error.dart';
import 'package:onlineshop_flutter/constantes.dart';

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
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          DefaultButton(
            text: "Continuer",
            press: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
              }
            }
          )
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
          onSaved: (value) => email = value,
          onChanged: (value) {
            if(value.isNotEmpty && errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            } else if(emailValidatorRegExp.hasMatch(value) &&
                errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            return null;
          },
          validator: (value){
            if(value!.isEmpty && !errors.contains(kEmailNullError)) {
              setState(() {
                errors.add(kEmailNullError);
              });
            } else if(value.isNotEmpty && !emailValidatorRegExp.hasMatch(value) &&
                !errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.add(kInvalidEmailError);
              });
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Entrez votre adresse email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",)
          ),
        );
  }
}
