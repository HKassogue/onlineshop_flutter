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
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
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
                )
              ],
            )
          ),
          Expanded(
            flex: 2,
            child: SizedBox()
          )
        ],
      ),
    );
  }
}