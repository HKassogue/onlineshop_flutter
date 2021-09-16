import 'package:flutter/material.dart';
import 'package:onlineshop_flutter/screens/profile/components/profile_menu.dart';
import 'package:onlineshop_flutter/screens/profile/components/profile_pic.dart';
import 'package:onlineshop_flutter/screens/splash/splash_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Mon compte",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Paramètres",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Centre d'aide",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Déconnexion",
            icon: "assets/icons/Log out.svg",
            press: () => Navigator.pushNamed(context, SplashScreen.routeName),
          ),
        ],
      )
    );
  }
}