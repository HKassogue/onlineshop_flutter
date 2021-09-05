import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/constantes.dart';
import 'package:onlineshop_flutter/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: SplashContent()
            ),
            Expanded(
              flex: 2,
              child: SizedBox()
            )
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'Mali sugu',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold
          )
        ),
        Text(
          'Bienvenu à Mali sugu, le shoping en toute simplicité !',
        ),
        Spacer(flex: 2,),
        Image.asset(
          'assets/images/splash_1.png',
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}