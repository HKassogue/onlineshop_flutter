import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/screens/splash/components/body.dart';
import 'package:onlineshop_flutter/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    // We have to call it on the starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
