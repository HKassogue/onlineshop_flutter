import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              Text(
                'E-sugu',
                style: TextStyle(fontSize: getProportionateScreenWidth(36))
              )
            ],
          )
        ),
        Expanded(
          flex: 2,
          child: SizedBox()
        )
      ],
    );
  }
}